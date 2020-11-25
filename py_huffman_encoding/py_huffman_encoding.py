
# coding: utf-8


from __future__ import print_function

import sys
import numpy as np
from time import time

sys.path.append('/home/xilinx')
from pynq import Overlay
from pynq import allocate

if __name__ == "__main__":
    print("Entry:", sys.argv[0])
    print("System argument(s):", len(sys.argv))

    print("Start of \"" + sys.argv[0] + "\"")

    ol = Overlay("/home/xilinx/IPBitFile/huffman_encoding.bit")
    ipHuffmanEncoding = ol.huffman_encoding_0
    ipDMA = ol.axi_dma_0

    numSymbols = 256
    inBuffer0 = allocate(shape=(numSymbols,), dtype=np.int64)
    outBuffer0 = allocate(shape=(numSymbols,), dtype=np.int32)

    with open("huffman.random256.txt", "r+") as inputFile:
        for i in range(numSymbols):
            line = inputFile.readline()
            inBuffer0[i] = i << 32 + int(line, 16)
    
    
    timeKernelStart = time()
    ipHuffmanEncoding.write(0x00, 0x01)
    ipDMA.sendchannel.transfer(inBuffer0)
    ipDMA.recvchannel.transfer(outBuffer0)
    ipDMA.sendchannel.wait()
    ipDMA.recvchannel.wait()
    timeKernelEnd = time()
    print("Kernel execution time: " + str(timeKernelEnd - timeKernelStart) + " s")
    
    while ipHuffmanEncoding.read(0x14) & 1 != 1:
        pass 
    returnNum = ipHuffmanEncoding.read(0x10)
    if returnNum  != 256:
        print(f"ERROR: total symbol return {returnNum}")
        
    errCount = 0
    with open("huffman.random256.golden", "r+") as golden:
        for i in range(numSymbols):
            line = golden.readline().split(',')
            index = int(line[0])
            ans = int(line[1], 16)
            if outBuffer0[index] != ans:
                errCount += 1
    
    if errCount == 0:
        print('pass')
    else:
        print(f'Fail with number {errCount}')

    print("============================")
    print("Exit process")


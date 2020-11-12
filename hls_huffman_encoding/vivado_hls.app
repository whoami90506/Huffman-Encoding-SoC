<project xmlns="com.autoesl.autopilot.project" name="hls_huffman_encoding" top="huffman_encoding">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../huffman_encoding_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../huffman.random256.golden" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../huffman.random256.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="huffman_truncate_tree.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_create_codeword.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_sort.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_encoding.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_compute_bit_length.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_filter.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_create_tree.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="huffman_canonize_tree.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>


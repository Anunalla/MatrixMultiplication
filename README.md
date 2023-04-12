# MatrixMultiplication
A matrix multiplication module for multiplying two complex valued square matrices.

The module was added as Avalon Memory mapped slave and connected with NIOS II. The target board is Cyclone V GT Development kit.
The NIOS II design is based on the example design below.

https://www.intel.com/content/www/us/en/design-example/714919/cyclone-v-nios-ii-simple-socket-server-ethernet-example-for-cvgt.html

Problem: It works when the matrix size is 2x2. But for size 3x3, the NIOS II console hangs when the project is run as NIOS II hardware.



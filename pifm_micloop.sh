while [ true ]
do
    #espeak --stdout "test 1234567890" | sox -r 22050 -c 1 -t wav - -t wav - | sudo ./pifm - 101
    #espeak --stdout "this is just another test to see if this little program works!!!!"|sox -t wav - -r 22050 test3.wav && ./pifm test3.wav 101
    #sudo sox -t alsa hw:1,0 -r 22050 -c 1 -t wav - | sudo ./pifm - 98.2
    arecord -fS16_LE -r 22050 -Dplughw:1,0 - | sudo ./pifm - 98.2 22050


#    rm testmic.wav
done

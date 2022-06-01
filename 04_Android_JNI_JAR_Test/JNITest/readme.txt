# liblog.so is copied from API 21

# generate APITest.class and .h file or JNI
sudo ./prepare.sh

# generate libapi.so
sudo ./build.sh

# call APICaller in .so file
APITest aptTest = new APITest();
aptTest.APICaller();
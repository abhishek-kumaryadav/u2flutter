# U2FLUTTER

## U2net Portrait test on flutter with colab-fastapi backend 

### Getting Started

This project is a testing app for https://github.com/xuebinqin/U-2-Net Portrait Model

### Initial Setup and Run

1. Clone the repository:
```
git clone https://github.com/abhk943/u2flutter.git
```
2. Upload the `U2_fastapi_backend.ipynb` and run it in a GPU runtime.
3. We need [u2net_portrait.pth](https://github.com/xuebinqin/U-2-Net), add this to colab initial directory.
4. Copy the ngrok server address as ```url``` and change ```url``` at 
```lib/home.dart        Line:67```.

Launch the app and application should run successfully.

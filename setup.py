import subprocess
import sys

PACKAGES = ["pypiwin32", "pycryptodome", "pyinstaller", "Pillow"]

def main():
    for pkg in PACKAGES:
        print(f"Installing {pkg}...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", pkg])
    print("\nDone. Edit config.json, then run: python r1yat.py")

if __name__ == "__main__":
    main()
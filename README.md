Building the Docker Image
To build the Docker image, use the following command:
´´´
docker build -t <name>:1.0 .´
´´´
Running the Application
Linux:
Run the following command to set up and start the application:

source setup.sh
Windows:
Follow these instructions step by step:

1. Install VcXsrv Windows X Server
You'll need an X server to display GUI applications on Windows. VcXsrv is a popular choice.

Download VcXsrv and install it.
2. Start VcXsrv
After installation:

Start XLaunch from the Start menu.
Go through the configuration steps:
Select "Multiple windows" and click "Next".
Choose "Start no client" and click "Next".
Check "Disable access control" (for simplicity) and click "Next".
Finish the configuration and start the X server.
Note: Disabling access control is for ease of setup. In a production environment, you'd want to set up proper access control for security reasons.

3. Run the Docker Container with Display Access:
Now, you'll run your Docker container and point it to the X server you just started. Use the IP address of your Windows machine as the display. If you're unsure of your IP address, you can find it using ipconfig in the Command Prompt.

Replace your_ip with your actual IP address and run:
´´´
docker run -it --rm -e DISPLAY=your_ip:0.0 <docker_img_name>
´´´
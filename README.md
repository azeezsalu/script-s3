# Repository Name

This repository contains a Bash script that automates the installation and setup of an Apache web server on an Amazon Linux instance. The script also syncs the contents of an AWS S3 bucket to the web server's document root directory and extracts a zip file.

## Prerequisites

To use this script, you need to have the following:

- An Amazon Linux instance with sudo access
- AWS CLI installed and configured on the instance
- An AWS S3 bucket containing the necessary web content
- Internet connectivity on the instance to download updates and packages

## Usage

1. Clone or download this repository to your Amazon Linux instance.
2. Open the terminal and navigate to the repository's directory.

```bash
cd repository-directory
```

3. Edit the script if needed to adjust any paths or configurations.

```bash
nano script.sh
```

4. Make the script executable.

```bash
chmod +x script.sh
```

5. Execute the script with root privileges.

```bash
sudo ./script.sh
```

The script will perform the following steps:

1. Update the system packages using `yum update -y`.
2. Install Apache HTTP Server using `yum install -y httpd`.
3. Change the working directory to `/var/www/html`.
4. Sync the contents of the specified AWS S3 bucket to `/var/www/html` using `aws s3 sync`.
5. Extract the `mole.zip` file.
6. Copy the contents of `/var/www/html/mole-main` to `/var/www/html`.
7. Remove the `mole.zip` and `mole-main` directories.
8. Enable the Apache service using `systemctl enable httpd`.
9. Start the Apache service using `systemctl start httpd`.

After running the script, you should have a fully functional Apache web server with the synchronized content from the AWS S3 bucket.

## Disclaimer

Please use this script at your own risk. Review the script carefully before running it, and ensure you have appropriate backups and permissions in place. The author is not responsible for any damages or issues caused by using this script.

## License

This project is licensed under the [MIT License](LICENSE).

docker run -env _IMG_USERNAME=dave -env _IMG_PASSWORD=sadf1234 -v /host/persist/:/mnt/persist/ -v /mnt/realmsmb:/media/realm -p 49059:5900 49022:22 dpedu 

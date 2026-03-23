# cse3dms
This repository contains docker configuration, scripts and data for subject CSE3DMS - Database Management System 
La Trobe University.

#Notes for Sem 1 - 2026
If you want to use the computer lab, these are some important informations that you need to follow:

   1. Make sure you use a USB 3.0 portable storage device with at least 128GB of capacity.
      You can use a flash drive, a portable SSD, or an NVMe drive.
      I would not recommend USB 2 or earlier generations or portable HDDs, as the read/write performance is quite low.
   2. Make sure you download the latest Github configuration from here.
      If you downloaded the configuration prior to 24 March 2026, you cannot run the service on the lab computers.
   3. You must download DBeaver community edition from this [link](https://dbeaver.io/download/). Make sure you only download the "ZIP" version. Extract the file in the portable storage.
   4. You must use QGIS VM from this [link](https://latrobeuni-my.sharepoint.com/:u:/g/personal/kadhinugraha_ltu_edu_au/IQBOPSkuQN1WRIjTO6FGrYe8AUFfhN0bf4KrxPpy3NmIp7E?e=1xVv1P).
      The VM image must be located in the flash drive as well.
   5. To run the PostGIS service, you must open the terminal in postgis folder, and run the following script (Assume your flash drive is in D:\)
      D:\cse3dms-main\postgis> docker compose up
      You may need to re-establish the connection to DBeaver and QGIS each time you work.
   7. By using this method, you can continue your work at home, as long as you have Docker and Oracle VM in your machine.

Please contact me if you have any issues.

Created by : Kiki Adhinugraha
Send the issues to : k.adhinugraha@latrobe.edu.au

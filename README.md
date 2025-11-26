# Embedded Superset Dashboard

## My Goal

Coming soon

## Architecture

Coming soon


### Dataset

The dataset used for these charts was downloaded from [Kaggle - Superstore](https://www.kaggle.com/datasets/ronysoliman/global-superstore-dataset)


### Dashboard Upload

We have the dashboard in the file [here](./data/superset/dashboard_export.zip). To upload it to the dashboard you can login to Superset and go to the dashboard and upload it using the Import Dashboards button. Or you can use the command line to upload it using the following `docker exec -it ss_container superset import-dashboards -p /tmp/dashboard_export.zip -u admin`

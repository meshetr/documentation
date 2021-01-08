# Documentation
 
## Meshetr

> Next Generation Online Market Place

## Data Model

![Data Model](pics/data-model_v02.jpg)

## Components

### Meshetr Web Interface
> web-interface

[https://meshetr.github.io/](http://34.120.16.63/catalogue/api/swagger-ui/index.html)

### Ad Catalogue API
> ad-catalogue
[http://34.120.16.63/catalogue/](http://34.120.16.63/catalogue/api/v1)

### Ad Management Service
> ad-manager
[http://34.120.16.63/manager/](http://34.120.16.63/manager/)

### Image preprocessing service
> image-processor
[http://34.120.16.63/processor/](http://34.120.16.63/processor/)

### Ad tracker API
> ad-tracker
[http://34.120.16.63/tracker/](http://34.120.16.63/tracker/)

### Ad stats API
> ad-stats
[http://34.120.16.63/insights/](http://34.120.16.63/insights/)

### Central logging Logit.io (Log4j2 via UDP)
[https://kibana.logit.io/s/ca4ac19f-0058-442d-89da-c59f0a5c8441/app/kibana#/discover?_g=()](kibana.logit.io)



# Endpoints

### Ad Management Service

Ad endpoints:

| method | path           | description                             |
|--------|----------------|------------------------------------------|
| POST   | /api/v1/ad     | add another ad                           |
| PUT    | /api/v1/ad     | post updated ad information about the ad |
| DELETE | /api/v1/ad/:id | delete ad                                |

Photo endpoints:

| method | path                        | description      |
|--------|-----------------------------|-------------------|
| POST   | /api/v1/ad/:id/photo        | add another photo |
| DELETE | /api/v1/ad/:ad-id/photo/:id | delete photo      |


### Ad Catalogue Service


| method | path            | description                                        |
|--------|-----------------|----------------------------------------------------|
| GET   | /api/v1/ads      | latest 30 ads / available paging                   |
| GET    | /api/v1/ad/{id} | specific ad by id and child objects such as images |

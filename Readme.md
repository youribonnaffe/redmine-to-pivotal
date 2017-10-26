# Redmine to Pivotal Tracker integration

Import Redmine issues in Pivotal Tracker using Redmine API.

See https://www.pivotaltracker.com/help/articles/other_integration/

XSLT is used to transform Redmine's API output into Pivotal. 
With Nginx's XSLT module it is possible to proxy Redmine's API and transform XML content on the fly.

## How to use it

1. Build the Docker image
> docker build -t nginx-xslt .

2. Run the Docker image somewhere on the Internet
> docker run -ti -p 8080:80 -e REDMINE_ISSUES_URL='https://YOUR_REDMINE/issues.xml?key=REDMINE_API_KEY&sort=updated_on:desc' nginx-xslt 

3. Add an integration in Pivotal pointing to the Nginx container (https://www.pivotaltracker.com/help/articles/other_integration/)

## Notes

Since the URL must be publicly accessible you might want to add Basic Auth on top of it.
# esx_useractive
esx_useractive is a FiveM resource which adds ability to track user activity by logging their last connect date in the MySQL database.

### Requirements
- https://github.com/brouznouf/fivem-mysql-async

### Download & Installation
#### Download
##### Using Git
```
cd resources
git clone https://github.com/redoper1/esx_useractive
```
- Optionally you can use switch to any subfolder, for example `[scripts]`:
```
cd "resources/[scripts]"
git clone https://github.com/redoper1/esx_useractive
```

##### Manually
- Download https://github.com/redoper1/esx_useractive/archive/master.zip
- Extract it into directory.
- Put it into desired directory in `resources` directory

#### Installation
- Add this to the end of your `server.cfg` "`start resources`":
```
start esx_useractive
```
- While cloning or downloading from GitHub your directory will be most like named as `esx_useractive-master`

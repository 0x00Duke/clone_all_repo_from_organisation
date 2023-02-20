# clone_all_repo_organisation
This script is used to clone all the repositories of an organisation.

## Usage
### First you need to get a github token:

- go [here](https://github.com/settings/tokens/new)
- set the name of the token
- set the expiration date (As you want)
- set the scope to `repo` (the very first box)
- click on `Generate token`
- copy the token

---

### Now you have two options:

#### In your terminal:

#### 1. Export the token and organization name as an environment variable and run the script:

##### 1.1. Export the token:

```bash
export ACCESS_TOKEN=your_token
```

##### 1.2. Export the organization name:

```bash
export ORG_NAME=your_organization_name
```

##### 1.3. Add execution right and Run the script:

```bash
chmod +x clone_repos.sh && ./clone_repos.sh
```

#### 2. Run the script with the token and organization name as arguments:

```bash
chmod +x clone_repos.sh && ./clone_repos.sh your_token your_organization_name
```

---



### But this will clone all the repositories of the organization where the script has been ran
### If you want to make the script accessible from anywhere, you can do this:

#### 1. Create a folder in your home directory:

```bash
mkdir ~/scripts
```

#### 2. Copy the script to the folder:

```bash
cp clone_repos.sh ~/scripts
```

#### 3. Create a simbolik link to the script:

```bash
ln -s ~/scripts/clone_repos.sh /usr/local/bin/clone_repos
```

#### 4. Give execution right to the script:

```bash
chmod +x ~/scripts/clone_repos.sh
```

#### 5. Go where you want to clone the repositories:

```bash
cd where_you_want_to_clone_the_repositories
```

#### 6. Run the script:

```bash
clone_repos your_token your_organization_name
```


And that's it, you can now clone all the repositories of an organization from anywhere 😃

Please give a star to the repo if you liked it 😊 ⭐️

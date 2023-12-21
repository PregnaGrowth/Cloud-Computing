## Documentasi Cloud Computing
### Insfrastrukture Diagram Cloud and Database
![Pregna](https://github.com/PregnaGrowth/Cloud-Computing/blob/main/uploads/pregna.png?raw=True)

### databases
![Pregna](https://github.com/PregnaGrowth/Cloud-Computing/blob/main/uploads/drawSQL-pregnagrowth-export-2023-12-21.png?raw=True)
## Instalasi

1. Ensure you have installed at least version v.20.10 [Node.js](https://nodejs.org/).
2. Clone this repository to your computer:

    ```bash
    https://github.com/PregnaGrowth/Cloud-Computing.git
    ```

3. Navigate to the application directory:

    ```bash
    cd pregnagrowth
    ```
    ```bash
    cd Cloud_Computing
    ```

4. Install dependencies:

    ```bash
    npm install
    ```

5. Copy the .env.example file to .env and adjust the database configuration and other environment variables:

    ```bash
    cp .env.example .env
    ```

    Replace the values of variables in the .env file according to your needs.
Create a MySQL Database:
    ```bash
    pregnaGrowthDb
    ```

7. Migrate the database using Prisma:

    ```bash
    npx prisma migrate dev
    ```

8. Run the application:

    ```bash
    npm run dev
    ```

    The application will run at [http://localhost:8080](http://localhost:8080).

## API

### 1. Get Questions based on Keywords / F&Q

- **Endpoint:** `/api/faq/:question`
- **Method:** GET
- **Deskripsi:** Get questions and answers based on the question keywords.
- **Example Usage:**


  ## API List

| No.  | Endpoint                    | Metode | Deskripsi                                      |
|------|-----------------------------|--------|------------------------------------------------|
| 1    | `/api/v1/question/faq/:question`       | GET    | Get questions based on keywords. |
| 2    | `/api/v1/question/:id`                 | GET    | Get questions based on id.         |
| 3    | `/api/v1/question`                     | GET    | Get all F&Q data in the database. |
| 2    | `/api/v1/question`                     | POST   | Add question data.                     |

- API usage example to get questions frequently asked by pregnant women
  ```http
  GET /api/v1/question/question/question/Berapa%20lama%20kehamilan%20normal?


### 2. Use Login and Register API

- **Endpoint:** `/api/v1/auth`
- **Deskripsi:** Get API for login and register.
- **Example Usage:**


  ## API List

| No.  | Endpoint                    | Metode | Deskripsi                                      |
|------|-----------------------------|--------|------------------------------------------------|
| 1    | `/api/v1/auth/login`        | POST   | Use API to request login.            |
| 2    | `/api/v1/auth/login/admin`  | POST   | Use API for admin login.                   |
| 3    | `/api/v1/auth/register`     | POST   | Request API for registration.                   |

- Example usage of login and register API
  ```http
  POST /api/v1/auth/register

### 3. use API Users

- **Endpoint:** `/api/v1/user`
- **Description :** Get API for application user login.
- **Example Usage:**


  ## Daftar API

| No.  | Endpoint                    | Metode | Deskripsi                                      |
|------|-----------------------------|--------|------------------------------------------------|
| 1    | `/api/v1/user`        | GET   | Use API to view all user data.         |
| 2    | `/api/v1/user/:id`    | GET   | Use API to view user userid.             |
| 3    | `/api/v1/user/profile/:id`    | GET   | Use API to view user profile.             |
| 4    | `/api/v1/user`        | POST  | Request API to create a user.                 |
| 5    | `/api/v1/user/:id`    | PUT   | Use API to update user by id.          |
| 6    | `/api/v1/user/user/:id/profile`    | PUT   | Use API to update profile by user.          |
| 7    | `/api/v1/user/:id`    | DELETE| Use API to delete user by iduser              |

- Example usage of login and register API
  ```http
  GET /api/v1/user
  ```
### 4. Use API Role

- **Endpoint:** `/api/v1/role`
- **Description :** Get API for application role login.
- **Example Usage:**


  ## Daftar API

| No.  | Endpoint                    | Metode | Deskripsi                                      |
|------|-----------------------------|--------|------------------------------------------------|
| 1    | `/api/v1/role`        | GET   | Use API to view all role data.         |
| 2    | `/api/v1/role/:id`    | GET   | Use API to view role by id.             |
| 3    | `/api/v1/role`        | POST  | Request API to create a role.                 |
| 4    | `/api/v1/role/:id`    | PUT   | Use API to update role by id.          |
| 5    | `/api/v1/role/:id`    | DELETE| Use API to delete role by id.               |

- Example usage of login and register API
  ```http
  GET /api/v1/role
  ```

### 5. Use API Profile

- **Endpoint:** `/api/v1/profile`
- **Description :** Get API for application profile user.
- **Example Usage:**


  ## Daftar API

| No.  | Endpoint                    | Metode | Deskripsi                                      |
|------|-----------------------------|--------|------------------------------------------------|
| 1    | `/api/v1/profile`        | GET   | Use API to view all profile data.         |
| 2    | `/api/v1/profile/:id`    | GET   | Use API to view profile by id.             |
| 3    | `/api/v1/profile`        | POST  | Request API to create a profile.                 |
| 4    | `/api/v1/profile/:id`    | PUT   | Use API to update profile by id.          |
| 5    | `/api/v1/profile/:id`    | DELETE| Use API to delete profile by id.               |

- Example usage of login and register API
  ```http
  GET /api/v1/profile
  ```

## Deploy Node.js Application on GCP
### Deploy Node.js Application on GCP with Compute Engine

### Dokumentasi

- Prerequisites
 1. Google Cloud Platform Account
 2. Google Cloud Platform Project
 3. Node.js Development Environment
 4. Cloud SQL instance (optional)

### Steps

- Create a Google Cloud Platform Project:
    Open https://console.cloud.google.com/.
- Click the Create Project button.
- Enable APIs:
    Open https://console.cloud.google.com/apis/library/.
- Enable the Compute Engine API.
- (Optional) Enable the Cloud SQL API if using a database.
- Create VM Instance and Firewall:
    Open https://console.cloud.google.com/compute/instances/.
        - Create VM Firewall in Compute Engine
        - Create VM Instance
        - Click the Create Instance button.
- Configure the VM instance as needed.
    - Configure VM Instance
      ```bash
      gcloud compute ssh <name instance> --zone <isi zone instance>
      ```
      - Update pakage
      ```bash
      sudo apt update
      ```     
- Instal Node.js di VM Instance melalui cloud run :
- Open the terminal on the VM instance.
    Run Command:
```bash
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
```
```bash
sudo apt-get install -y nodejs
```
- Remove node_modules/
      ```bash
      rm -r node_modules/
      ```
- Go Back derectory
      ```bash
      cd ..
      ```
- Run compute scp
      ```bash
      gcloud compute scp --recurse <nama folder apps> <nama instance>: --zone <zone instance>
      ```
Deploy Aplikasi Node.js:

```bash
cd /path/to/app
```
```bash
npm install
```
```bash
npm start
```
Access the application:
Open http://<instance_ip>:8080 di browser.

### Running with pm2 
- change derectory folder apps
- install pm2 in instance
  ```bash
  sudo npm install pm2@latest -g
  ```
- use derectory folder index
- running server apps with pm2
  ```bash
  PORT=8080 DEBUG=<nama folder apps>:* pm2 start <nama folder index>
  ```
- monitoring pm2
  ```bash
  pm2 logs
  ```

  ### selesai backend running/ online
  HTTP://<externalIP>:8080 in browser

# QuizBuzz – Full-stack Quiz Application

React + Vite frontend, Express API, MongoDB, JWT authentication and bcrypt password hashing.

## Requirements
- Node.js 18 or newer
- MongoDB Atlas account (or a locally running MongoDB server)

## First-time setup (Windows PowerShell)
1. Extract this ZIP and open the `QuizBuzz_Full_Project` folder in VS Code.
2. Create the server environment file:
   ```powershell
   Copy-Item server\.env.example server\.env
   ```
3. Open `server/.env` and replace `YOUR_DB_USERNAME`, `YOUR_DB_PASSWORD`, and `YOUR_CLUSTER` with your MongoDB Atlas Database Access username, its password, and the cluster host.
4. Keep `ADMIN_EMAIL=admin@gmail.com`. The MongoDB password is NOT the QuizBuzz admin login password.
5. Install dependencies:
   ```powershell
   npm.cmd install
   npm.cmd run install:all
   ```
6. Start the app:
   ```powershell
   npm.cmd run dev
   ```
7. Open http://localhost:5173

The backend prefers `server/.env` and also supports a `.env` in the project root. Never share either environment file.

## First Admin account
On the Register page, enter Name `QuizBuzz Admin`, Email `admin@gmail.com`, and a password you choose (minimum 8 characters). The first registration using the exact `ADMIN_EMAIL` value receives the Admin role. If this email is already registered, log in with its existing password; registering again does not overwrite the account.

## API health check
Open http://localhost:5000/api/health. A healthy API responds with JSON containing `status: ok`.

## CSV question import format
Headers: `question,type,optionA,optionB,optionC,optionD,correctAnswers,explanation`. `type` is `single`, `multiple`, or `true_false`.

## Important
This ZIP does not contain private MongoDB credentials. Authentication works only after MongoDB is configured and the backend prints `MongoDB connected successfully`. Keep `server/.env` private.

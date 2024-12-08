
# WebHook - Ruby Sinatra Web Application

This project is a simple WebHook service built using Ruby, Sinatra, and Docker. You can run it locally or in a Docker container and test it using cURL or Postman.

## Requirements
- **Docker**: [Install Docker](https://www.docker.com/get-started) if you don’t have it yet.
- **Ruby**: [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/) if you plan to run the server locally.

## Installation Instructions

1. **Clone this repository**:
   ```bash
   git clone https://github.com/freddyelgato/WebHook.git
   cd WebHook
   ```

2. **Install dependencies** (using Bundler):
   ```bash
   bundle init  # Initializes Gemfile
   echo "gem 'sinatra'" >> Gemfile  # Add Sinatra gem
   bundle install  # Install required gems
   ```

3. **Build and run the application with Docker**:
   ```bash
   docker build -t sinatra-app .
   docker run -d -p 4567:4567 --name sinatra-container sinatra-app
   ```

4. **Access the WebHook**:
   Open your browser or Postman and visit:
   - **WebHook Endpoint**: [http://localhost:4567/webhook](http://localhost:4567/webhook)

## API Methods

Use the following cURL or Postman requests to test the WebHook:

1. **Test WebHook with cURL**:
   ```bash
   curl -X POST http://localhost:4567/webhook -H "Content-Type: application/json" -d '{"event": "prueba", "data": {"message": "Hola, este es un test"}}'
   ```

2. **Test WebHook with Postman**:
   - URL: `http://localhost:4567/webhook`
   - Method: `POST`
   - Body: (raw JSON)
     ```json
     {
       "event": "prueba",
       "data": {
         "message": "HELLO, This is a test :)"
       }
     }
     ```

   You should receive this response:
   ```json
   {
     "message": "Hello World: Webhook Successfully Received"
   }
   ```

## Docker Image Commands

- **Build the Docker image**:
  ```bash
  docker build -t sinatra-app .
  ```

- **Run the Docker container** (in detached mode):
  ```bash
  docker run -d -p 4567:4567 --name sinatra-container sinatra-app
  ```

- **Verify running containers**:
  ```bash
  docker ps
  ```

- **Stop and remove the container**:
  ```bash
  docker stop sinatra-container
  docker rm sinatra-container
  ```

- **Remove the Docker image**:
  ```bash
  docker rmi sinatra-app
  ```

## Screenshots

### Webhook test using cURL:
![Webhook cURL](https://i.postimg.cc/Q97RJbk7/Prueba-Consola.png)
[View](https://postimg.cc/Q97RJbk7)

### Webhook test using Postman:
![Webhook Postman](https://i.postimg.cc/v1kJnj9M/Prueba-Postman.png)
[View](https://postimg.cc/v1kJnj9M)

### Connect to the repository:

- For any questions, here is the [WebHook GitHub repository](https://github.com/freddyelgato/WebHook) where you can find more details to guide you through the project.

- You can find the Docker image for this project here: [WebHook Docker Image](https://hub.docker.com/r/2424833f/webhook)

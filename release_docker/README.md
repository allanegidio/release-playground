# ReleaseDocker

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Testing Using Docker

Follow these steps to test your application using Docker:

1. **Generate a Secret Key Base**  
   Run the following command to generate a secret key:  
   ```bash
   mix phx.gen.secret
   ```
   - Copy the generated `REALLY_LONG_SECRET`.
   - Add it to your `.env` file with the name `SECRET_KEY_BASE`.

2. **Set Up the Database URL**  
   - Add `DATABASE_URL` to your `.env` file.  
   - Use `.env-example` as a reference.

3. **Start Docker Compose**  
   Run the following command to start the services in detached mode:  
   ```bash
   docker compose up -d
   ```

4. **Build the Docker Image**  
   Build the Docker image with the following command:  
   ```bash
   docker build -t <username>/release-docker:v1 .
   ```

5. **Run the Docker Container**  
   Start the container with the following command:  
   ```bash
   docker run -p 4000:4000 --env-file .env <username>/release-docker:v1
   ```

### Notes:
- Replace `<username>` with your Docker Hub username or preferred identifier.
- Ensure your `.env` file is properly configured before running the commands.
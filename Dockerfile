# Use the official Ruby image as the base image
FROM ruby:3.1.2

# Expose the port that Sinatra uses (by default it's 4567)
EXPOSE 4567

# Set configuration to prevent installing gems if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# Create and set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the necessary gems
RUN bundle install

# Copy the rest of the project files into the container
COPY . /app

# Default command to run the Sinatra server
CMD ["ruby", "webhook.rb"]


# Use the existing image as the base
FROM fire-detection

# Create working directory
WORKDIR /app

# Copy the Streamlit app code
COPY app.py /app/

# Install Streamlit if not already included
RUN pip install streamlit

# Expose port 8501 for Streamlit
EXPOSE 8501

# Define environment variable to avoid "running as root" warning
ENV STREAMLIT_SERVER_HEADLESS=true

# Command to run Streamlit app
CMD ["streamlit", "run", "app.py"]

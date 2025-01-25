# File Upload System

A Ruby on Rails application allowing users to upload, view, and share files securely. This system allows users to:

- Login and upload files.
- View a list of files they have uploaded.
- Delete files.
- Share files publicly with a unique URL.

## Features

- **User Authentication**: Users can sign up, sign in, and sign out using Devise.
- **File Upload**: Users can upload files of up to 1GB.
- **File Management**: Users can view their uploaded files, delete them, and share them with others.
- **File Sharing**: Once a file is uploaded, users can generate a unique, public URL to share the file.
- **Tiny URL Generation**: When sharing a file, the system creates a short and unique URL for easy access.

## Installation

To set up and run the application locally, follow the steps below.

### Prerequisites

- Ruby 2.6.9 or higher
- Rails 6.x
- MySQL (or use SQLite for local development)

### Steps

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your-username/file_upload_system.git
   cd file_upload_system

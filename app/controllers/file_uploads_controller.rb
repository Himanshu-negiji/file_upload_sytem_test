class FileUploadsController < ApplicationController
  before_action :authenticate_user!

  def index
    @file_uploads = current_user.file_uploads
  end

  def create
    @file_upload = current_user.file_uploads.build(file_upload_params)

    if @file_upload.save
      # Generate the tiny URL and assign it as a string
      @file_upload.update(tiny_url: generate_tiny_url(@file_upload))
      redirect_to file_uploads_path, notice: 'File uploaded successfully!'
    else
      render :new
    end
  end

  def destroy
    @file_upload = current_user.file_uploads.find(params[:id])
    @file_upload.destroy
    redirect_to file_uploads_path, notice: 'File deleted successfully.'
  end

  private

  def file_upload_params
    params.require(:file_upload).permit(:title, :description, :file)
  end

  def generate_tiny_url(file)
    # Here we return the tiny URL as a string
    "http://localhost:3000/file_uploads/#{file.id}"
  end
end

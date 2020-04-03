class WelcomeImagesController < ApplicationController
  def upload
    raise StandardError.new 'no image' if params[:welcome_image][:image].nil?

    logger.info(params[:welcome_image][:display_image])
    image = WelcomeImage.new(image: params[:welcome_image][:image], original_filename: params[:welcome_image][:image].original_filename, display_image: params[:welcome_image][:display_image])
    image.save!
    redirect_to :back, notice: l(:notice_successful_update)
  rescue StandardError => e
    logger.info e.message
    logger.info e.backtrace.inspect
    redirect_to :back, flash: { error: 'Choose an image!' }
  end
  def show_image
    last_image = WelcomeImage.last
    last_image.display_image = true;
    last_image.save!
    redirect_to :back, flash: { notice: 'Image is now displaying!' }
  end
  def hide_image
    last_image = WelcomeImage.last
    last_image.display_image = false;
    last_image.save!
    redirect_to :back, flash: { notice: 'Image is now hidden!' }
  end
  def toggle
    last_image = WelcomeImage.last
    last_image.display_image ? hide_image : show_image
  end
end

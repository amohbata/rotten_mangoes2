class Movie < ActiveRecord::Base

  has_many :reviews

  mount_uploader :image, ImageUploader

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validates :description,
    presence: true

  validates :poster_image_url,
    presence: true

  validates :release_date,
    presence: true

  validate :release_date_is_in_the_future

  ##scopes are like class methods
  # scope :with_director, -> do |director| where(director: director)
  # end

  # scope :matching_title, -> do |title| where(title: title)
  # end

  def self.ordered_by_release_date
    Movie.order(release_date: :desc, title: :asc)
  end

  def review_average
  	if reviews.size == 0
  		"There are no reviews"
  	else
    reviews.sum(:rating_out_of_ten)/reviews.size
  	end
  end

  protected

  def release_date_is_in_the_future
    if release_date.present?
      errors.add(:release_date, "should probably be in the future") if release_date < Date.today
    end
  end

end

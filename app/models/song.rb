class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_year }
<<<<<<< HEAD

  validates :release_year, presence: true, if: :released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if: :released?
=======
  validates :released, inclusion: { in: %w(true false)}
  validates :release_year, presence: true, if: :released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }
>>>>>>> 44909197f8f4f356dac7b82c39c79c2c27de285f
  validates :artist_name, presence: true

  def released?
    released == true
  end
end

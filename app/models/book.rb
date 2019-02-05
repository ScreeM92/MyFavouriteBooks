class Book < ApplicationRecord
	enum genre: { science_fiction: 'Science fiction', drama: 'Drama', actionAndAdventure: 'Action and Adventure', romance: 'Romance', mystery: 'Mystery', horror: 'Horror' }
end

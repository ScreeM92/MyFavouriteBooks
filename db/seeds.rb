# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.create([
	{ title: 'The Art of War', publishDate: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"), description: 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike.', genre: 'actionAndAdventure', isbnNumber: '1', author: 'Sun Tzu' },
	{ title: 'Ali the Immortal', publishDate: DateTime.strptime("09/01/2014 17:00", "%m/%d/%Y %H:%M"), description: 'Ali the Immortal earned his nickname in the bloody Iran-Iraq War. As an Iranian soldier, he miraculously survived unscathed every time from the fierce battlefield where hundreds died around him. Disillusioned with his Islamic faith, Ali became a hardened criminal and got involved with drug trafficking, gangs and murder which eventually led to his escape to Europe. Ali the Immortal became notorious in the criminal underworld in Europe where he was convicted of many crimes including assault and attempted murder, kidnapping, drug trafficking, and armed robbery. Spending some 14 of the last 20 years of his life in dark Bulgarian prisons, four in solitary confinement, Ali at last came across a Bible written in his native language of Farsi. A new faith in the one true God would emerge in this encounter with the person of Jesus Christ changing Ali’s life forever. Ali today tirelessly serves the poor in the refugee camps of Bulgaria as a committed missionary for Christ.', genre: 'mystery', isbnNumber: '2', author: 'Ali' },
	{ title: 'Think and Grow Rich', publishDate: DateTime.strptime("09/01/2011 17:00", "%m/%d/%Y %H:%M"), description: 'This is the original 1937 version of Napoleon Hill\'s Classic Book: Think and Grow Rich. To the greatest extent possible, the text and formatting have been kept exactly the same as in the original release with the exception of some minor formatting changes.', genre: 'horror', isbnNumber: '3', author: 'Napoleon Hill' },
	{ title: 'Eloquent JavaScript: A Modern Introduction to Programming', publishDate: DateTime.strptime("09/01/2010 17:00", "%m/%d/%Y %H:%M"), description: '"A concise and balanced mix of principles and pragmatics. I loved the tutorial-style game-like program development. This book rekindled my earliest joys of programming. Plus, JavaScript!" —Brendan Eich, creator of JavaScript', genre: 'romance', isbnNumber: '4', author: 'Marijn Haverbeke' },
	{ title: 'JavaScript: The Good Parts', publishDate: DateTime.strptime("09/01/2007 17:00", "%m/%d/%Y %H:%M"), description: 'Most programming languages contain good and bad parts, but JavaScript has more than its share of the bad, having been developed and released in a hurry before it could be refined. This authoritative book scrapes away these bad features to reveal a subset of JavaScript that\'s more reliable, readable, and maintainable than the language as a whole--a subset you can use to create truly extensible and efficient code.', genre: 'science_fiction', isbnNumber: '5', author: 'Douglas Crockford ' },
	{ title: 'Hamlet', publishDate: DateTime.strptime("09/01/1999 17:00", "%m/%d/%Y %H:%M"), description: 'Among Shakespeare\'s plays, "Hamlet" is considered by many his masterpiece. Among actors, the role of Hamlet, Prince of Denmark, is considered the jewel in the crown of a triumphant theatrical career. Now Kenneth Branagh plays the leading role and co-directs a brillant ensemble performance. Three generations of legendary leading actors, many of whom first assembled for the Oscar-winning film "Henry V", gather here to perform the rarely heard complete version of the play. This clear, subtly nuanced, stunning dramatization, presented by The Renaissance Theatre Company in association with "Bbc" Broadcasting, features such luminaries as Sir John Gielgud, Derek Jacobi, Emma Thompson and Christopher Ravenscroft. It combines a full cast with stirring music and sound effects to bring this magnificent Shakespearen classic vividly to life. Revealing new riches with each listening, this production of "Hamlet" is an invaluable aid for students, teachers and all true lovers of Shakespeare - a recording to be treasured for decades to come.', genre: 'drama', isbnNumber: '6', author: 'William Shakespeare ' },
])
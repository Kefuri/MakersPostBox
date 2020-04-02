[![Build Status](https://travis-ci.org/Kefuri/MakersPostBox.svg?branch=master)](https://travis-ci.org/Kefuri/MakersPostBox)
![Maintainability](https://api.codeclimate.com/v1/badges/8f9ec95783638f897810/maintainability)](https://codeclimate.com/github/Kefuri/MakersPostBox/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/8f9ec95783638f897810/test_coverage)](https://codeclimate.com/github/Kefuri/MakersPostBox/test_coverage)


### [Makers Academy](http://www.makersacademy.com) - Week 11/12 Team programming challenge 


# PostBox 

#### Technologies: Rails, React, Rspec, HTML, CSS, TravisCI, CodeClimate

[Task](#Task) | [Collaborators](#Collaborators) | [Installation Instructions](#Installation) | [Mockup](#Mockup) |

## <a name="Task">The Task</a>

Production code is generally built by a team of developers. It is important that you leave Makers with the skills needed to work in a team, and this is the primary reason that project weeks exist in the curriculum.

The final projects also provide a safe environment for you to be creative and enjoy exploring new directions with your code.

## <a name="Collaborators">Collaborators</a>


How to get this project locally:
  * [Elena Beccaro](https://github.com/elebecca)
  * [Chris Eadie](https://github.com/saidbyced)
  * [Haydon Houghton](https://github.com/Kefuri)
  * [Emily Wright](https://github.com/EWright212)
 


## <a name="Installation">Installation Instructions</a>

1. Fork this repository, clone to your local machine then change into the directory:
```
$ git clone https://github.com/Kefuri/MakersPostBox.git
$ cd MakersPostBox
```

2. Load dependencies with bundle:
```
$ gem install bundle
$ bundle
```

3. Access to the database is controlled by an ORM, ActiveRecord. ActiveRecord rake tasks will are used to migrate the development and test databases. 

To migrate the development and test databases, please run the following command:
```
$ rail db:create
```

4. To poplulate the databases with the appropriate tables, run the following migrations:
```
$ rails db:migrate
```

5. Run the app on a local server: 
```
$ rails s
```
To view the app navigate to: http://localhost:3000/

6. Tests were written with RSpec. To run the tests in terminal: 
```
$ cd MakersPostBox
$ rspec
```




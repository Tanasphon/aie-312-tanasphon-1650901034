# create a new Class, User, that has the following attributes:
# - name
# - email
# - password


# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users

# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content

# add a method to user so, user can enter to a room
# user.enter_room(room)

# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)
class User
    attr_accessor :name, :email, :password, :rooms
  
    def initialize(name, email, password)
      @name = name
      @email = email
      @password = password
      @rooms = []
    end
  
    def enter_room(room)
      room.add_user(self)
    end
  
    def send_message(room, content)
      message = Message.new(self, room, content)
      room.broadcast(message)
    end
  
    def acknowledge_message(room, message)
      puts "#{name} acknowledged message: #{message.content} in #{room.name}"
    end
  end
  
  class Room
    attr_accessor :name, :description, :users
  
    def initialize(name, description)
      @name = name
      @description = description
      @users = []
    end
  
    def add_user(user)
      @users << user unless @users.include?(user)
      user.rooms << self unless user.rooms.include?(self)
      puts "#{user.name} has entered #{name}."
    end
  
    def broadcast(message)
      @users.each do |user|
        puts "#{user.name} received message: #{message.content} from #{message.user.name} in #{name}"
        user.acknowledge_message(self, message)
      end
    end
  end
  
  class Message
    attr_accessor :user, :room, :content
  
    def initialize(user, room, content)
      @user = user
      @room = room
      @content = content
    end
  end
user1 = User.new("Han", "Jeehan.sutt@bumail.net", "GPA4ALLTHEWAY")
user2 = User.new("Bug", "Bugbunny@gmail.com", "Whassupdoc!")

room = Room.new("New World 1", "A place to Express")

user1.enter_room(room)
user2.enter_room(room)

user1.send_message(room, "What's up DOC!")

#What's UP DOC!
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


# Define the User class
class User
    attr_accessor :name, :email
    attr_reader :password
  
    def initialize(name, email, password)
      @name = name
      @email = email
      @password = password
    end
  
    # User enters a room
    def enter_room(room)
      room.add_user(self)
      puts "#{@name} has entered the room: #{room.name}"
    end
  
    # User sends a message to a room
    def send_message(room, content)
      message = Message.new(self, room, content)
      room.broadcast(message)
    end
  
    # User acknowledges a message in the room
    def acknowledge_message(room, message)
      puts "#{@name} acknowledges the message: '#{message.content}' in room #{room.name}"
    end
  end
  
  # Define the Room class
  class Room
    attr_accessor :name, :description, :users
  
    def initialize(name, description)
      @name = name
      @description = description
      @users = []
    end
  
    # Add user to room
    def add_user(user)
      @users << user
      puts "#{user.name} has been added to the room."
    end
  
    # Broadcast a message to all users in the room
    def broadcast(message)
      @users.each do |user|
        puts "#{user.name} received message in #{message.room.name}: #{message.content}"
      end
    end
  end
  
  # Define the Message class
  class Message
    attr_accessor :user, :room, :content
  
    def initialize(user, room, content)
      @user = user
      @room = room
      @content = content
    end
  end
  
  
  # Create a new User
  user_1 = User.new("Ramida", "Ramidaa.tant@bumail.net", "password1234")
  
  # Create a new Room
  room_1 = Room.new("General", "discussion room")
  
  # User enters the room
  user_1.enter_room(room_1)
  
  # User sends a message to the room
  user_1.send_message(room_1, "Hello everyone!")
  
  # Acknowledge the message (can be customized further based on other users)
  user_1.acknowledge_message(room_1, Message.new(user_1, room_1, "Hello everyone!"))
  
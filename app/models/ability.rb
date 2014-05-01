class Ability
 include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? != nil #0 is the integer value assigned to DJs
      can :read, :all
      can :manage, Song
      can :destroy, Comment, song: {user_id: user.id} 
        # do |comment|
        #     (comment.song.user.id == user.id if (comment.song and comment.song.user)) || comment.user.id == user.id
        # end
      can :manage, User do |thing|
        thing.id == user.id
      end
    elsif user.persisted?
      can :create, Comment
    elsif user.role? '1' #1 is the integer value assigned to Admins
      can :manage, :all
    else
      can :read, :all
      can :create, User
    end
  end
end

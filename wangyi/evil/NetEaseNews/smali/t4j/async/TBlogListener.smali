.class public interface abstract Lt4j/async/TBlogListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createdBlock(Lt4j/data/User;)V
.end method

.method public abstract createdFavorites(Lt4j/data/Status;)V
.end method

.method public abstract createdFriendship(Lt4j/data/User;)V
.end method

.method public abstract destoryed(Lt4j/data/Status;)V
.end method

.method public abstract destroyedBlock(Lt4j/data/User;)V
.end method

.method public abstract destroyedDirectMessage(Lt4j/data/DirectMessage;)V
.end method

.method public abstract destroyedFavorite(Lt4j/data/Status;)V
.end method

.method public abstract destroyedFriendship(Lt4j/data/User;)V
.end method

.method public abstract existsBlock(Lt4j/data/User;)V
.end method

.method public abstract gotBlockUserIds([J)V
.end method

.method public abstract gotBlockUsers(Ljava/util/List;)V
.end method

.method public abstract gotComments(Ljava/util/List;)V
.end method

.method public abstract gotDirectMessage(Ljava/util/List;)V
.end method

.method public abstract gotFavorites(Ljava/util/List;)V
.end method

.method public abstract gotFollowers(Lt4j/data/PagableResponseList;)V
.end method

.method public abstract gotFriends(Lt4j/data/PagableResponseList;)V
.end method

.method public abstract gotHomeTimeline(Ljava/util/List;)V
.end method

.method public abstract gotLocationTimeline(Ljava/util/List;)V
.end method

.method public abstract gotMentions(Ljava/util/List;)V
.end method

.method public abstract gotPublicTimeline(Ljava/util/List;)V
.end method

.method public abstract gotRetweetsOfMe(Ljava/util/List;)V
.end method

.method public abstract gotSentDirectMessages(Ljava/util/List;)V
.end method

.method public abstract gotUserTimeline(Ljava/util/List;)V
.end method

.method public abstract gotVenues(Ljava/util/List;)V
.end method

.method public abstract onException(Lt4j/TBlogException;I)V
.end method

.method public abstract retweeted(Lt4j/data/Status;)V
.end method

.method public abstract searchedStatus(Ljava/util/List;)V
.end method

.method public abstract searchedUsers(Ljava/util/List;)V
.end method

.method public abstract sentDirectMessage(Lt4j/data/DirectMessage;)V
.end method

.method public abstract shownStatus(Lt4j/data/Status;)V
.end method

.method public abstract shownUser(Lt4j/data/User;)V
.end method

.method public abstract updatedImage(Ljava/lang/String;)V
.end method

.method public abstract updatedStatus(Lt4j/data/Status;)V
.end method

.method public abstract verifiedCredentials(Lt4j/data/User;)V
.end method

.class public interface abstract Lorg/jsoup/Connection$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/Connection$Base;


# virtual methods
.method public abstract data()Ljava/util/Collection;
.end method

.method public abstract data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;
.end method

.method public abstract followRedirects(Z)Lorg/jsoup/Connection$Request;
.end method

.method public abstract followRedirects()Z
.end method

.method public abstract ignoreContentType(Z)Lorg/jsoup/Connection$Request;
.end method

.method public abstract ignoreContentType()Z
.end method

.method public abstract ignoreHttpErrors(Z)Lorg/jsoup/Connection$Request;
.end method

.method public abstract ignoreHttpErrors()Z
.end method

.method public abstract parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection$Request;
.end method

.method public abstract parser()Lorg/jsoup/parser/Parser;
.end method

.method public abstract timeout()I
.end method

.method public abstract timeout(I)Lorg/jsoup/Connection$Request;
.end method

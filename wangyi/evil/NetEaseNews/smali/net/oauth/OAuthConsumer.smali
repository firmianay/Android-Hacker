.class public Lnet/oauth/OAuthConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "HTTP.header.Accept-Encoding"

.field public static final ACCESSOR_SECRET:Ljava/lang/String; = "oauth_accessor_secret"

.field private static final serialVersionUID:J = -0x1f58179f823167d4L


# instance fields
.field public final callbackURL:Ljava/lang/String;

.field public final consumerKey:Ljava/lang/String;

.field public final consumerSecret:Ljava/lang/String;

.field private final properties:Ljava/util/Map;

.field public final serviceProvider:Lnet/oauth/OAuthServiceProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthConsumer;->properties:Ljava/util/Map;

    iput-object p1, p0, Lnet/oauth/OAuthConsumer;->callbackURL:Ljava/lang/String;

    iput-object p2, p0, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    iput-object p3, p0, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    iput-object p4, p0, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthConsumer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthConsumer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

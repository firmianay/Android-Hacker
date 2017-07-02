.class public Lcom/mime/qweibo/OauthKey;
.super Ljava/lang/Object;


# instance fields
.field public callbackUrl:Ljava/lang/String;

.field public customKey:Ljava/lang/String;

.field public customSecrect:Ljava/lang/String;

.field public tokenKey:Ljava/lang/String;

.field public tokenSecrect:Ljava/lang/String;

.field public verify:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->verify:Ljava/lang/String;

    iput-object v0, p0, Lcom/mime/qweibo/OauthKey;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.class public Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final DOCUMENT_CHARSET:I = 0x2

.field public static final PROTOCOL_CHARSET:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private reason:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;->reason:Ljava/lang/String;

    iput p1, p0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;->reasonCode:I

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;->reasonCode:I

    return v0
.end method

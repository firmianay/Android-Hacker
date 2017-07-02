.class La/a/a/d;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, La/a/a/d;->a:Ljava/lang/String;

    const/16 v0, 0x3d

    sput-char v0, La/a/a/d;->b:C

    return-void
.end method

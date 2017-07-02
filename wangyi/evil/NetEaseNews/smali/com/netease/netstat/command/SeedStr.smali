.class public Lcom/netease/netstat/command/SeedStr;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "randoml"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/netstat/command/SeedStr;->getrandomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getrandomString()Ljava/lang/String;
.end method

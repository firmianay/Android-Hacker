.class public Lcom/netease/util/k/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/netease/util/k/c;

.field private static final b:Lcom/netease/util/k/l;

.field private static c:Lcom/netease/util/k/i;

.field private static d:Lcom/netease/util/k/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_0

    new-instance v0, Lcom/netease/util/k/e;

    invoke-direct {v0, v1}, Lcom/netease/util/k/e;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->a:Lcom/netease/util/k/c;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_1

    new-instance v0, Lcom/netease/util/k/n;

    invoke-direct {v0, v1}, Lcom/netease/util/k/n;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->b:Lcom/netease/util/k/l;

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_2

    new-instance v0, Lcom/netease/util/k/j;

    invoke-direct {v0, v1}, Lcom/netease/util/k/j;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->c:Lcom/netease/util/k/i;

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_3

    new-instance v0, Lcom/netease/util/k/h;

    invoke-direct {v0, v1}, Lcom/netease/util/k/h;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->d:Lcom/netease/util/k/f;

    :goto_3
    return-void

    :cond_0
    new-instance v0, Lcom/netease/util/k/d;

    invoke-direct {v0, v1}, Lcom/netease/util/k/d;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->a:Lcom/netease/util/k/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/util/k/m;

    invoke-direct {v0, v1}, Lcom/netease/util/k/m;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->b:Lcom/netease/util/k/l;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/netease/util/k/k;

    invoke-direct {v0, v1}, Lcom/netease/util/k/k;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->c:Lcom/netease/util/k/i;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/netease/util/k/g;

    invoke-direct {v0, v1}, Lcom/netease/util/k/g;-><init>(Lcom/netease/util/k/b;)V

    sput-object v0, Lcom/netease/util/k/a;->d:Lcom/netease/util/k/f;

    goto :goto_3
.end method

.method public static a()Lcom/netease/util/k/i;
    .locals 1

    sget-object v0, Lcom/netease/util/k/a;->c:Lcom/netease/util/k/i;

    return-object v0
.end method

.method public static b()Lcom/netease/util/k/f;
    .locals 1

    sget-object v0, Lcom/netease/util/k/a;->d:Lcom/netease/util/k/f;

    return-object v0
.end method

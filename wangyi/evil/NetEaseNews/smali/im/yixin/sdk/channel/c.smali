.class public Lim/yixin/sdk/channel/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lim/yixin/sdk/channel/c;->a:Ljava/lang/String;

    iput-object v2, p0, Lim/yixin/sdk/channel/c;->b:Ljava/lang/String;

    iput-object v2, p0, Lim/yixin/sdk/channel/c;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lim/yixin/sdk/channel/c;->d:J

    iput-object v2, p0, Lim/yixin/sdk/channel/c;->e:Ljava/lang/String;

    iput-object v2, p0, Lim/yixin/sdk/channel/c;->f:[B

    return-void
.end method

.method public static final a(Landroid/content/Intent;)Lim/yixin/sdk/channel/c;
    .locals 4

    new-instance v0, Lim/yixin/sdk/channel/c;

    invoke-direct {v0}, Lim/yixin/sdk/channel/c;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "_yxmessage_content"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/yixin/sdk/channel/c;->a(Ljava/lang/String;)V

    const-string v1, "_yxmessage_sdkVersion"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lim/yixin/sdk/channel/c;->d:J

    const-string v1, "_yxmessage_appPackage"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/yixin/sdk/channel/c;->e:Ljava/lang/String;

    const-string v1, "_yxmessage_checksum"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lim/yixin/sdk/channel/c;->f:[B

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yixin://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lim/yixin/sdk/channel/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/yixin/sdk/channel/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/channel/c;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-wide v2, p0, Lim/yixin/sdk/channel/c;->d:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/yixin/sdk/channel/c;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lim/yixin/sdk/channel/c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lim/yixin/sdk/channel/c;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->f:[B

    if-eqz v0, :cond_0

    array-length v0, v2

    iget-object v3, p0, Lim/yixin/sdk/channel/c;->f:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lim/yixin/sdk/channel/c;->f:[B

    array-length v3, v3

    if-lt v0, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lim/yixin/sdk/channel/c;->f:[B

    aget-byte v3, v3, v0

    aget-byte v4, v2, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lim/yixin/sdk/channel/c;->c:Ljava/lang/String;

    return-object v0
.end method

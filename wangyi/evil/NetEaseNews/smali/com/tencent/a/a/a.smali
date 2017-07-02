.class public Lcom/tencent/a/a/a;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tencent/a/a/v;

.field static b:Lcom/tencent/a/a/v;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field public static e:Z

.field private static f:Lcom/tencent/a/a/a/c;

.field private static g:Lcom/tencent/a/a/b;

.field private static h:Z

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:I

.field private static s:I

.field private static t:Z

.field private static u:J

.field private static v:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x400

    const/16 v3, 0x1e

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/a/a/a/b;->b()Lcom/tencent/a/a/a/c;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v0, Lcom/tencent/a/a/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/a/a/v;-><init>(I)V

    sput-object v0, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    new-instance v0, Lcom/tencent/a/a/v;

    invoke-direct {v0, v2}, Lcom/tencent/a/a/v;-><init>(I)V

    sput-object v0, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    sget-object v0, Lcom/tencent/a/a/b;->f:Lcom/tencent/a/a/b;

    sput-object v0, Lcom/tencent/a/a/a;->g:Lcom/tencent/a/a/b;

    sput-boolean v2, Lcom/tencent/a/a/a;->h:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/a/a/a;->i:I

    sput v4, Lcom/tencent/a/a/a;->j:I

    sput v3, Lcom/tencent/a/a/a;->k:I

    const/4 v0, 0x3

    sput v0, Lcom/tencent/a/a/a;->l:I

    sput v3, Lcom/tencent/a/a/a;->m:I

    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/a/a/a;->c:Ljava/lang/String;

    sput-object v5, Lcom/tencent/a/a/a;->n:Ljava/lang/String;

    sput-object v5, Lcom/tencent/a/a/a;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/a/a/a;->d:Ljava/lang/String;

    const/16 v0, 0x5a0

    sput v0, Lcom/tencent/a/a/a;->r:I

    sput v4, Lcom/tencent/a/a/a;->s:I

    sput-boolean v2, Lcom/tencent/a/a/a;->t:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/a/a/a;->u:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/a/a/a;->v:J

    sput-boolean v2, Lcom/tencent/a/a/a;->e:Z

    return-void
.end method

.method public static a()Lcom/tencent/a/a/b;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/a;->g:Lcom/tencent/a/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/a/a/a/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    sget-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    const/16 v0, 0x3e8

    const v1, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/tencent/a/a/a;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/a/a/a;->i:I

    goto :goto_0
.end method

.method public static a(Lcom/tencent/a/a/b;)V
    .locals 3

    sput-object p0, Lcom/tencent/a/a/a;->g:Lcom/tencent/a/a/b;

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change to SendStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/a/a/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Lcom/tencent/a/a/v;)V
    .locals 2

    iget v0, p0, Lcom/tencent/a/a/v;->a:I

    sget-object v1, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v1, v1, Lcom/tencent/a/a/v;->a:I

    if-ne v0, v1, :cond_1

    sput-object p0, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    sget-object v0, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget-object v0, v0, Lcom/tencent/a/a/v;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/a/a/a;->b(Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/a/a/v;->a:I

    sget-object v1, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    iget v1, v1, Lcom/tencent/a/a/v;->a:I

    if-ne v0, v1, :cond_0

    sput-object p0, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    goto :goto_0
.end method

.method static a(Lcom/tencent/a/a/v;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/a/a/v;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/c;->b(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "c"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/a/a/v;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/a/v;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/a/a/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/tencent/a/a/d;->a(Lcom/tencent/a/a/v;)V

    :cond_5
    iget v0, p0, Lcom/tencent/a/a/v;->a:I

    sget-object v1, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v1, v1, Lcom/tencent/a/a/v;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/a/a/v;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/a/a/a;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/tencent/a/a/v;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/a/a/a;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "The length of appkey cann\'t exceed 256 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/tencent/a/a/a;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/a/a/a;->b:Lcom/tencent/a/a/v;

    invoke-static {v2, v0}, Lcom/tencent/a/a/a;->a(Lcom/tencent/a/a/v;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/c;->b(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    iget v2, v2, Lcom/tencent/a/a/v;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/a/a/a;->a:Lcom/tencent/a/a/v;

    invoke-static {v2, v0}, Lcom/tencent/a/a/a;->a(Lcom/tencent/a/a/v;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/a/a/b;->a(I)Lcom/tencent/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/tencent/a/a/a;->g:Lcom/tencent/a/a/b;

    sget-object v2, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change to ReportStrategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/a/a/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/tencent/a/a/a;->h:Z

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static a(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/a/a/a/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    sget-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lcom/tencent/a/a/a;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/a/a/a;->r:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/tencent/a/a/a;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/a/a/b;->a(I)Lcom/tencent/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Lcom/tencent/a/a/b;)V

    sget-object v1, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change to ReportStrategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/a/a/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/c;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/a/a/a;->t:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/tencent/a/a/a/b;->b()Lcom/tencent/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/c;->a()Z

    move-result v0

    return v0
.end method

.method static c(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/tencent/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernateVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0.6.12"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/a/a/a/b;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "0.6.12"

    invoke-static {v3}, Lcom/tencent/a/a/a/b;->b(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/tencent/a/a/p;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tencent/a/a/a;->c:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/tencent/a/a/a/d;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/a/a/a;->a(Z)V

    sget-object v1, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTA has disable for SDK version of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or lower."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/a/a/a;->f:Lcom/tencent/a/a/a/c;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/c;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/a/a/a;->e:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/a/a/a;->h:Z

    return v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->i:I

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->m:I

    return v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->l:I

    return v0
.end method

.method static g()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->k:I

    return v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->j:I

    return v0
.end method

.method static i()Lorg/apache/http/HttpHost;
    .locals 5

    sget-object v0, Lcom/tencent/a/a/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/a/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v1, Lcom/tencent/a/a/a;->o:Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x50

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/a;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cgi.connect.qq.com"

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/tencent/a/a/a;->r:I

    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/a/a/a;->t:Z

    return v0
.end method

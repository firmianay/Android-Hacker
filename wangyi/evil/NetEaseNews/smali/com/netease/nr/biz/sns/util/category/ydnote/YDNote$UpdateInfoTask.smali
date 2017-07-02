.class Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;-><init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const-string v1, "<!-- verifier -->"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$400(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustsceset:Ljava/lang/String;
    invoke-static {v4}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$500(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->requestVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "oauth_token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "oauth_token_secret"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "oauth_token"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_token_secret"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->doInBackground([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$600(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$700(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$800(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V
    invoke-static {v0, v1, p1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$900(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$1000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$1100(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->onPostExecute(Landroid/content/ContentValues;)V

    return-void
.end method

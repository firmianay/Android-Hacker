.class public final Lim/yixin/sdk/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lim/yixin/sdk/api/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Yixin.SDK.YXApiImplementation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "(packageInfo != null)="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",packageInfo.versionCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x92

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private a([Landroid/content/pm/Signature;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3082019f30820108a003020102020450d3f283300d06092a864886f70d010105050030133111300f060355040313086368696e6174656c3020170d3132313232313035323431395a180f32303632313230393035323431395a30133111300f060355040313086368696e6174656c30819f300d06092a864886f70d010101050003818d00308189028181009ec811f81e259d74109087d546a6b5cf0d4372a5c095c3de42db8dad608698bb9885d0afed6b1fb8188eec5a51dc086e7a9ef00a2071ec92f586a8faf9a3587a98d09a6e45bb3858f4a3ff1052140fa3ece902518bafe1935351a822eae166825b31f09fb0f25cd96fe3ee7b6b3f0d6fa20126a110f5af481097325a7f0c442b0203010001300d06092a864886f70d010105050003818100776f185197eb6f104a81269ac79d9f9aa02e570d535ea5082e9838a816eecce344fe70b222ec1a7ccb2c3d5ca9331d305f0925c2b111eebecdc42adbd34c85e1f1eb636c2589fcafe23d63ac48bbce8f0ac0ddbb5a72bbe13ee2273a18a7844365102d6395eebfef266a263c8b3ca8196bfda79375534d22b5be5a8a13c08ea8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "3082030d308201f5a003020102020401cc2ba1300d06092a864886f70d01010b05003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3133303231373232333431305a170d3433303231303232333431305a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730820122300d06092a864886f70d01010105000382010f003082010a0282010100a986894ad9e5faad066d576366d07bb7ab37ad97bb1691b01786d4a37202e7b71115a18392daef2639d8aa6d1c3ac9258c0ab75d006f34bc0273be63000c143843a8ef6ceda0f1de4426fab56c92a59e92d45874831746d39f8982ff89c674d286287b2d749cccd04ce112acb9ffb574a1da7d00188680562adfabe3b03bfef01cdb2e1452e9849f3269378d291bb7525b2f02d0a68725ab1237fd09d3c7e24746160b6a105fc4c781a89cd2aaeec98bcff24cc9916baab82bba79a14299593a543523bb1f327a56947908300b5713b6dd490bc7339d661bd356f2d4c453b78074974b48fd1c5b4ea48e3cb8603ef3cde0dfbf1e3bc2b9d7cb6505f9861b49150203010001a321301f301d0603551d0e041604147f7ead059498d489e43eb0e1a3a8fa57798aa205300d06092a864886f70d01010b050003820101007b650f42089d53e4486c4f0f0eb0fcda466aecd52cf9ce1af4bb48e540031e3b1cd76dc153173b823951882ba8c1790b7eb8f735deb222e0705884980d3fd1507777a82c9ff0cc8b4f6f98cb8ee219fc816fcbea1969055a913e0b7c10fa6af8dfeefc5cb79c88c3d420bb25bb7823610fdc48398b42486b0797d15ac4275138d7a4c7aa49f907efd80c26fc3e498492d633dbb1b866ac1fa42e39e26d27b9512d2cb1850e07ae924c0b2842d2a52c5216b927ed5267876ace7c6b737c05740c623f24cff28c9b23a514bc0daa510d25c646b5c45bf3c5a0f81d176eb9f454d1ef611aaae461cb8fb3ed01baf9017cda4801bd99d2bf3ef327a4ba7b7a0dc517"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lim/yixin/sdk/api/i;)V
    .locals 0

    invoke-direct {p0}, Lim/yixin/sdk/api/i;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v1, "showYixinDownloadPage:http://yixin.im/"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://yixin.im/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Yixin.SDK.YXApiImplementation"

    const-string v2, "validateYixinSignature"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lim/yixin/sdk/api/i;->e()Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v0}, Lim/yixin/sdk/api/i;->a([Landroid/content/pm/Signature;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "im.yixin"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 5

    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v1, "registerApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lim/yixin/sdk/api/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v1, "registerApp: validateYixinSignature - false or isBlank(this.appId)!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    const-string v1, "im.yixin"

    const-string v2, "im.yixin.sdk.Intent.ACTION_HANDLE_APP_REG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "yixin://registerapp?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/channel/YXMessageChannel;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;Lim/yixin/sdk/api/d;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lim/yixin/sdk/channel/c;->a(Landroid/content/Intent;)Lim/yixin/sdk/channel/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/yixin/sdk/channel/c;->a()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v2, "handleIntent failed because !protocol.isValid()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "onReq"

    invoke-virtual {v2}, Lim/yixin/sdk/channel/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "_yxapi_command_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lim/yixin/sdk/api/f;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lim/yixin/sdk/api/f;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v1}, Lim/yixin/sdk/api/d;->a(Lim/yixin/sdk/api/a;)V

    goto :goto_0

    :cond_2
    const-string v3, "onResp"

    invoke-virtual {v2}, Lim/yixin/sdk/channel/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "_yxapi_command_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-instance v1, Lim/yixin/sdk/api/g;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lim/yixin/sdk/api/g;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v1}, Lim/yixin/sdk/api/d;->a(Lim/yixin/sdk/api/b;)V

    goto :goto_0

    :cond_3
    const-string v1, "Yixin.SDK.YXApiImplementation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIntent error command passed from Yixin "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lim/yixin/sdk/channel/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lim/yixin/sdk/api/a;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lim/yixin/sdk/api/i;->e()Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v2}, Lim/yixin/sdk/api/i;->a([Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lim/yixin/sdk/api/i;->c()V

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lim/yixin/sdk/api/i;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lim/yixin/sdk/api/j;

    invoke-direct {v2, p0}, Lim/yixin/sdk/api/j;-><init>(Lim/yixin/sdk/api/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v1, "Yixin.SDK.YXApiImplementation"

    const-string v2, "sendReq error parameter paramBaseReq is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "Yixin.SDK.YXApiImplementation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendReq: transaction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lim/yixin/sdk/api/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lim/yixin/sdk/api/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Yixin.SDK.YXApiImplementation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendReq: transaction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lim/yixin/sdk/api/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkArgs fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lim/yixin/sdk/api/a;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    const-string v2, "im.yixin"

    const-string v3, "im.yixin.sdk.communication.YXEntryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "yixin://sendreq?appid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lim/yixin/sdk/channel/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v1, "unregisterApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lim/yixin/sdk/api/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/channel/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Yixin.SDK.YXApiImplementation"

    const-string v1, "unregisterApp: validateYixinSignature - false or isBlank(this.appId)!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/i;->a:Landroid/content/Context;

    const-string v1, "im.yixin"

    const-string v2, "im.yixin.sdk.Intent.ACTION_HANDLE_APP_UNREGISTER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "yixin://unregisterapp?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lim/yixin/sdk/api/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/channel/YXMessageChannel;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

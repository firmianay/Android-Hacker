.class public Lnet/oauth/server/OAuthServlet;
.super Ljava/lang/Object;


# static fields
.field private static final PROBLEM_TO_HTTP_CODE:Ljava/util/Map;

.field private static final SC_FORBIDDEN:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lnet/oauth/server/OAuthServlet;->SC_FORBIDDEN:Ljava/lang/Integer;

    sget-object v0, Lnet/oauth/OAuth$Problems;->TO_HTTP_CODE:Ljava/util/Map;

    sput-object v0, Lnet/oauth/server/OAuthServlet;->PROBLEM_TO_HTTP_CODE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lnet/oauth/OAuthMessage;
    .locals 2

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Lnet/oauth/server/HttpRequestMessage;

    invoke-direct {v0, p0, p1}, Lnet/oauth/server/HttpRequestMessage;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRequestURL(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleException(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnet/oauth/server/OAuthServlet;->handleException(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method public static handleException(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Exception;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lnet/oauth/OAuthProblemException;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/oauth/OAuthProblemException;

    invoke-virtual {p1}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "HTTP status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/oauth/server/OAuthServlet;->PROBLEM_TO_HTTP_CODE:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/oauth/OAuthProblemException;->getProblem()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lnet/oauth/server/OAuthServlet;->SC_FORBIDDEN:Ljava/lang/Integer;

    :cond_1
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    new-instance v0, Lnet/oauth/OAuthMessage;

    invoke-virtual {p1}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, p2}, Lnet/oauth/OAuthMessage;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/oauth/server/OAuthServlet;->sendForm(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Iterable;)V

    :cond_2
    return-void

    :cond_3
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    instance-of v0, p1, Ljavax/servlet/ServletException;

    if-eqz v0, :cond_5

    check-cast p1, Ljavax/servlet/ServletException;

    throw p1

    :cond_5
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_6
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-char v4, v2, v0

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    const-string v4, "&quot;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static sendForm(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/Iterable;)V
    .locals 1

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->resetBuffer()V

    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;Ljava/io/OutputStream;)V

    return-void
.end method

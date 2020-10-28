.class public Lcom/lawyee/wenshuapp/util/a/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/util/a/a$b;,
        Lcom/lawyee/wenshuapp/util/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Hashtable;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/lawyee/wenshuapp/util/a/a$a;

.field private l:Lcom/lawyee/wenshuapp/util/a/a$b;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;Ljava/lang/String;ILcom/lawyee/wenshuapp/util/a/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a;->h:Ljava/util/Hashtable;

    iput p3, p0, Lcom/lawyee/wenshuapp/util/a/a;->j:I

    iput-object p2, p0, Lcom/lawyee/wenshuapp/util/a/a;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/lawyee/wenshuapp/util/a/a;->k:Lcom/lawyee/wenshuapp/util/a/a$a;

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6b63\u5728\u83b7\u53d6\u4fe1\u606f..."

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->f:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/util/a/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/lawyee/wenshuapp/util/a/a;->f:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/lawyee/wenshuapp/util/a/a$1;

    invoke-direct {v6, p0}, Lcom/lawyee/wenshuapp/util/a/a$1;-><init>(Lcom/lawyee/wenshuapp/util/a/a;)V

    invoke-static/range {v1 .. v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/util/a/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/util/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v1

    :cond_1
    new-instance p1, Ljava/net/URL;

    iget-object v3, p0, Lcom/lawyee/wenshuapp/util/a/a;->g:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/lawyee/wenshuapp/util/a/a;->j:I

    if-nez v3, :cond_2

    const-string v3, "GET"

    :goto_1
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/lawyee/wenshuapp/util/a/a;->j:I

    if-ne v3, v2, :cond_3

    const-string v3, "POST"

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v3, 0x1770

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_6

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/lawyee/wenshuapp/util/a/a;->i:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-boolean v2, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    goto :goto_4

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a;->c:Landroid/content/Context;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/util/a/a;->a([Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->k:Lcom/lawyee/wenshuapp/util/a/a$a;

    iget-boolean v1, p0, Lcom/lawyee/wenshuapp/util/a/a;->m:Z

    invoke-interface {v0, v1, p1}, Lcom/lawyee/wenshuapp/util/a/a$a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/util/a/a;->d:Z

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/a/a;->l:Lcom/lawyee/wenshuapp/util/a/a$b;

    if-eqz v0, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/lawyee/wenshuapp/util/a/a$b;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/util/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/util/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/a/a;->b()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/util/a/a;->a([Ljava/lang/Integer;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/util/a/a;->a([Ljava/lang/Integer;)V

    return-void
.end method

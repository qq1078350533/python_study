.class Lnet/lawyee/mobilelib/filedownloader/c$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilelib/filedownloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilelib/filedownloader/c;

.field private b:Z

.field private c:Ljava/net/URL;

.field private d:Ljava/io/RandomAccessFile;

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljava/io/InputStream;

.field private g:I


# direct methods
.method private b()V
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->r(Lnet/lawyee/mobilelib/filedownloader/c;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v3}, Lnet/lawyee/mobilelib/filedownloader/c;->g(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rwd"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->f(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a(J)V

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2, v0, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;J)J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    iget-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->h(Lnet/lawyee/mobilelib/filedownloader/c;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->b:Z

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;I)I

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->h(Lnet/lawyee/mobilelib/filedownloader/c;)V

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v0, v0, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->q(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public run()V
    .locals 13

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    if-ge v0, v1, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v4

    iget-object v6, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v6}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_4

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Z)Z

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->e(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    const/16 v5, 0x64

    iput v5, v4, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v5, v5, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;I)I

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v0}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Lnet/lawyee/mobilelib/filedownloader/c$b;)Lnet/lawyee/mobilelib/filedownloader/c$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->f(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->c:Ljava/net/URL;

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->c:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    :goto_4
    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c$b;->b()V

    goto :goto_5

    :cond_5
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->g(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->g(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "rwd"

    invoke-direct {v4, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    const-string v5, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v9}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;J)J

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;J)J

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->h(Lnet/lawyee/mobilelib/filedownloader/c;)V

    goto :goto_4

    :goto_5
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :cond_7
    :goto_6
    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_9

    iget-boolean v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->b:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v4, v1, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v9, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v9}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v9

    int-to-long v11, v5

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;J)J

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_8

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v5, v5, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v8}, Lnet/lawyee/mobilelib/filedownloader/c;->e(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v8

    :goto_7
    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_8
    const-wide/16 v8, 0x64

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v8

    div-long/2addr v10, v8

    long-to-int v5, v10

    iget v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->g:I

    if-le v5, v8, :cond_7

    iput v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->g:I

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v5, v5, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v8}, Lnet/lawyee/mobilelib/filedownloader/c;->e(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v8

    goto :goto_7

    :cond_9
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->c(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v4

    iget-object v8, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v8}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-eqz v4, :cond_a

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_c

    :cond_a
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-virtual {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->d()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v4, v4, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->i(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    :goto_8
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_b
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->g(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v4, v4, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->j(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    goto :goto_8

    :goto_9
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4}, Lnet/lawyee/mobilelib/filedownloader/c;->l(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a;

    move-result-object v4

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->k(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v6}, Lnet/lawyee/mobilelib/filedownloader/c;->f(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/lawyee/mobilelib/filedownloader/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v0}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Lnet/lawyee/mobilelib/filedownloader/c$b;)Lnet/lawyee/mobilelib/filedownloader/c$b;

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v4, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Z)Z

    :cond_c
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_a
    :try_start_6
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_b
    :try_start_7
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_5
    move-exception v4

    :try_start_8
    iget-boolean v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->b:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->m(Lnet/lawyee/mobilelib/filedownloader/c;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->n(Lnet/lawyee/mobilelib/filedownloader/c;)I

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v5

    iget-object v6, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v6}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v6

    if-lt v5, v6, :cond_12

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5}, Lnet/lawyee/mobilelib/filedownloader/c;->d(Lnet/lawyee/mobilelib/filedownloader/c;)J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->h(Lnet/lawyee/mobilelib/filedownloader/c;)V

    :cond_f
    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->p(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    iget-object v3, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v3}, Lnet/lawyee/mobilelib/filedownloader/c;->o(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/c$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2, v0}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Lnet/lawyee/mobilelib/filedownloader/c$b;)Lnet/lawyee/mobilelib/filedownloader/c$b;

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Z)Z

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v0, v0, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->j(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    :goto_c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    :cond_10
    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v5, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;J)J

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v3, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v3}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v3

    invoke-static {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;I)I

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v2, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Z)Z

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1, v0}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;Lnet/lawyee/mobilelib/filedownloader/c$b;)Lnet/lawyee/mobilelib/filedownloader/c$b;

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v0, v0, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->j(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->b(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c;I)I

    :cond_12
    :goto_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_e
    :try_start_a
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_f
    :try_start_b
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :goto_10
    :try_start_c
    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_11

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_11
    :try_start_d
    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->f:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_12
    :try_start_e
    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$b;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_13

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_13
    throw v0

    :cond_18
    return-void
.end method

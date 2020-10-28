.class public Lnet/lawyee/mobilelib/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v0, v1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_4
    move-exception p0

    move-object v0, v1

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object v0, v3

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_8
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)Z
    .locals 2

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->b(Ljava/lang/String;)Z

    :cond_1
    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    :cond_2
    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {p1}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {p0, p1}, Lnet/lawyee/mobilelib/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/a;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/a;->b(Ljava/lang/String;)Z

    :cond_1
    const/4 p2, 0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static {p1}, Lnet/lawyee/mobilelib/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lnet/lawyee/mobilelib/b/a;->d(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move v0, p2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p1, v0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    return v1

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :goto_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_8
    :goto_8
    throw p0

    :cond_9
    :goto_9
    return p2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {p0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_0
    move-exception v1

    move-object v4, v2

    move-object v2, p0

    move-object p0, v1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, p0

    move-object p0, v3

    :goto_1
    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v1

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    return-object v0

    :catchall_4
    move-exception v0

    move-object p0, v2

    move-object v2, v3

    :goto_6
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_5
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    throw v0

    :cond_9
    :goto_a
    return-object v1
.end method

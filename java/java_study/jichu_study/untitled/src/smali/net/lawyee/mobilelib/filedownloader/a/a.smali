.class public Lnet/lawyee/mobilelib/filedownloader/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/lawyee/mobilelib/filedownloader/a/c;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    new-instance v0, Lnet/lawyee/mobilelib/filedownloader/a/c;

    invoke-direct {v0, p1}, Lnet/lawyee/mobilelib/filedownloader/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->a:Lnet/lawyee/mobilelib/filedownloader/a/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/lawyee/mobilelib/filedownloader/a/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->a:Lnet/lawyee/mobilelib/filedownloader/a/c;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * from downloadinfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-direct {v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;-><init>()V

    const-string v3, "downLoadSize"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(J)V

    const-string v3, "fileName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->e(Ljava/lang/String;)V

    const-string v3, "filePath"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->d(Ljava/lang/String;)V

    const-string v3, "fileSize"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a(J)V

    const-string v3, "url"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->c(Ljava/lang/String;)V

    const-string v3, "taskID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(Ljava/lang/String;)V

    const-string v3, "userID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lnet/lawyee/mobilelib/filedownloader/a/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->a:Lnet/lawyee/mobilelib/filedownloader/a/c;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * from downloadinfo WHERE userID = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-direct {v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;-><init>()V

    const-string v2, "downLoadSize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(J)V

    const-string v2, "fileName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->e(Ljava/lang/String;)V

    const-string v2, "filePath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->d(Ljava/lang/String;)V

    const-string v2, "fileSize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a(J)V

    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->c(Ljava/lang/String;)V

    const-string v2, "taskID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(Ljava/lang/String;)V

    const-string v2, "userID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->a:Lnet/lawyee/mobilelib/filedownloader/a/c;

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/filedownloader/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadinfo"

    const-string v2, "userID = ? AND taskID = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public a(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V
    .locals 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "userID"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taskID"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downLoadSize"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "fileName"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filePath"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fileSize"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "url"

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->a:Lnet/lawyee/mobilelib/filedownloader/a/c;

    invoke-virtual {v4}, Lnet/lawyee/mobilelib/filedownloader/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * from downloadinfo WHERE userID = ? AND taskID = ? "

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "downloadinfo"

    const-string v7, "userID = ? AND taskID = ? "

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-virtual {p1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v1, v5, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "downloadinfo"

    invoke-virtual {v5, v6, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v4, v1

    :catch_1
    iget v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    iget v0, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilelib/filedownloader/a/a;->a(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V

    goto :goto_1

    :cond_1
    iput v3, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_2
    iput v3, p0, Lnet/lawyee/mobilelib/filedownloader/a/a;->c:I

    return-void
.end method

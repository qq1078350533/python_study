.class public Lnet/lawyee/mobilelib/filedownloader/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "filedownloader"

    sget-object v1, Lnet/lawyee/mobilelib/filedownloader/a/c;->a:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS downloadinfo (id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , userID VARCHAR, taskID VARCHAR, url VARCHAR, filePath VARCHAR, fileName VARCHAR, fileSize VARCHAR, downLoadSize VARCHAR )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

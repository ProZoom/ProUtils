.class public Lcom/sunrise/f/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/q;

    invoke-direct {v0}, Lcom/sunrise/f/q;-><init>()V

    sput-object v0, Lcom/sunrise/f/q;->a:Lcom/sunrise/f/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/sunrise/f/af;->g()V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/sql/Clob;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x800

    :try_start_1
    new-array v2, v2, [C

    :goto_1
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-gez v3, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    invoke-virtual {p1, v1}, Lcom/sunrise/f/af;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "write clob error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "read string from reader error"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
.end method

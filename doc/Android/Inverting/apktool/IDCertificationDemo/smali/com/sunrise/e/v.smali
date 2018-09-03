.class public Lcom/sunrise/e/v;
.super Lcom/sunrise/e/c;

# interfaces
.implements Lcom/sunrise/e/s;


# static fields
.field public static final a:Lcom/sunrise/e/v;

.field public static final b:Lcom/sunrise/e/v;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunrise/e/v;

    invoke-direct {v0}, Lcom/sunrise/e/v;-><init>()V

    sput-object v0, Lcom/sunrise/e/v;->a:Lcom/sunrise/e/v;

    new-instance v0, Lcom/sunrise/e/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sunrise/e/v;-><init>(Z)V

    sput-object v0, Lcom/sunrise/e/v;->b:Lcom/sunrise/e/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/e/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/e/v;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/e/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/e/v;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/e/v;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sunrise/e/v;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sunrise/e/v;->b(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p4, :cond_0

    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_2
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_3
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sunrise/d/g;

    invoke-direct {v2, p4}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/sunrise/d/g;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_1
    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/sunrise/d/a;->b()Ljava/text/DateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/sql/Date;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    throw v0

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected b(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_2
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_3
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sunrise/d/g;

    invoke-direct {v2, p4}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/sunrise/d/g;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_1
    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/sunrise/d/a;->b()Ljava/text/DateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/sunrise/d/g;->close()V

    throw v0

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

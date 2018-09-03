.class public Lorg/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 80
    sparse-switch v3, :sswitch_data_0

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :sswitch_1
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_2
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :sswitch_4
    const-string v3, "&apos;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Empty string."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains a space character."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x5b

    const/16 v2, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    .line 149
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 153
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    .line 154
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 155
    if-ne v0, v2, :cond_4

    .line 156
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 157
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    .line 282
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    :cond_2
    move v0, v3

    .line 176
    :cond_3
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    .line 177
    if-nez v1, :cond_7

    .line 178
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 161
    :cond_4
    if-ne v0, v6, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 163
    const-string v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v6, :cond_6

    .line 165
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 167
    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    move v3, v4

    .line 169
    goto :goto_0

    .line 172
    :cond_6
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 179
    :cond_7
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_8
    :goto_1
    if-gtz v0, :cond_3

    move v3, v4

    .line 185
    goto :goto_0

    .line 181
    :cond_9
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_8

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 186
    :cond_a
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_b

    .line 190
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    .line 191
    goto :goto_0

    .line 192
    :cond_b
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_e

    .line 196
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 197
    if-nez p2, :cond_c

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched close tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 200
    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 203
    :cond_d
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    .line 204
    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 208
    :cond_e
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_f

    .line 209
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 214
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 216
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v5

    .line 218
    :goto_2
    if-nez v1, :cond_10

    .line 219
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 224
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 227
    sget-object v7, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v7, :cond_12

    .line 228
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 229
    instance-of v7, v2, Ljava/lang/String;

    if-nez v7, :cond_11

    .line 230
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 232
    :cond_11
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v5

    .line 234
    goto :goto_2

    .line 236
    :cond_12
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    goto :goto_2

    .line 241
    :cond_13
    sget-object v2, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_16

    .line 242
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_14

    .line 243
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 245
    :cond_14
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 246
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    move v3, v4

    .line 250
    goto/16 :goto_0

    .line 248
    :cond_15
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 254
    :cond_16
    sget-object v2, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1d

    .line 256
    :cond_17
    :goto_4
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    .line 257
    if-nez v1, :cond_19

    .line 258
    if-eqz v0, :cond_18

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unclosed tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_18
    move v3, v4

    .line 261
    goto/16 :goto_0

    .line 262
    :cond_19
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 265
    const-string v2, "content"

    invoke-static {v1}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 271
    :cond_1a
    sget-object v2, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_17

    .line 272
    invoke-static {p0, v6, v0}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 273
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 274
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    move v3, v4

    .line 282
    goto/16 :goto_0

    .line 275
    :cond_1b
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v1, v3, :cond_1c

    const-string v1, "content"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 277
    const-string v1, "content"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 280
    :cond_1c
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 287
    :cond_1d
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v4, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object p0

    .line 307
    :cond_1
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_2
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 313
    :cond_3
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 314
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 316
    :cond_4
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 324
    :cond_5
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 326
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    .line 327
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    move v1, v0

    .line 330
    :cond_6
    if-ne v2, v4, :cond_8

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_0

    .line 333
    :cond_8
    if-lt v2, v4, :cond_0

    const/16 v0, 0x39

    if-gt v2, v0, :cond_0

    .line 334
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 335
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 336
    :cond_9
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 337
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    .line 339
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto/16 :goto_0

    :cond_a
    move-object p0, v1

    .line 341
    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    new-instance v1, Lorg/json/XMLTokener;

    invoke-direct {v1, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 368
    :goto_0
    invoke-virtual {v1}, Lorg/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 371
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3c

    const/4 v2, 0x0

    const/16 v9, 0x3e

    .line 395
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .line 417
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 418
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 421
    if-nez v1, :cond_2

    .line 422
    const-string v1, ""

    .line 424
    :cond_2
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 425
    check-cast v0, Ljava/lang/String;

    .line 432
    :cond_3
    const-string v0, "content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    .line 434
    check-cast v1, Lorg/json/JSONArray;

    .line 435
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v2

    .line 436
    :goto_1
    if-ge v0, v5, :cond_1

    .line 437
    if-lez v0, :cond_4

    .line 438
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :cond_4
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 448
    :cond_6
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    .line 449
    check-cast v1, Lorg/json/JSONArray;

    .line 450
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v0, v2

    .line 451
    :goto_2
    if-ge v0, v6, :cond_1

    .line 452
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 453
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_7

    .line 454
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    invoke-static {v7}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v7, "</"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 462
    :cond_7
    invoke-static {v7, v5}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 465
    :cond_8
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 466
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v0, "/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 473
    :cond_9
    invoke-static {v1, v5}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 476
    :cond_a
    if-eqz p1, :cond_b

    .line 480
    const-string v0, "</"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_4
    return-object v0

    .line 490
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 491
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 493
    :goto_5
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_f

    .line 494
    check-cast v0, Lorg/json/JSONArray;

    .line 495
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 496
    :goto_6
    if-ge v2, v4, :cond_e

    .line 497
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez p1, :cond_d

    const-string v1, "array"

    :goto_7
    invoke-static {v5, v1}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_d
    move-object v1, p1

    .line 497
    goto :goto_7

    .line 499
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 501
    :cond_f
    if-nez v0, :cond_10

    const-string v0, "null"

    .line 502
    :goto_8
    if-nez p1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 501
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 502
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_13
    move-object v0, p0

    goto/16 :goto_5
.end method

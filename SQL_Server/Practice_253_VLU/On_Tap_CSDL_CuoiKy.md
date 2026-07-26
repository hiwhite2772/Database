# ÔN TẬP CƠ SỞ DỮ LIỆU – THI CUỐI KỲ (30/7/2026 - 13h30)

> Cấu trúc đề: **Trắc nghiệm 2đ + Tự luận 8đ**. Thời gian 90 phút. Hình thức: Offline. Cho phép được mang tài liệu tham khảo nhưng **không sử dụng mạng internet**.

| Câu | Nội dung | Điểm | Chương |
|---|---|---|---|
| 1 | Trắc nghiệm lý thuyết (20 câu) | 2đ | 1,2,3,4,6 |
| 2 | Xác định lỗi sai trong ERD (10 lỗi) | 2đ | 2,3,4 |
| 3 | Thiết kế lược đồ CSDL từ ERD | 2đ | 4 |
| 4 | Chuẩn hóa dữ liệu (tìm khóa + phân rã) | 3đ | 6 |
| 5 | Đại số quan hệ | 1đ | 7 |

---

## PHẦN 1 — LÝ THUYẾT NỀN TẢNG - Phần trắc nghiệm [2đ - 20 câu x 0,1 đ]

### Chương 1 & 2: Khái niệm & Mô hình ERD
- **Thực thể (Entity)**: hình chữ nhật. **Thuộc tính**: hình oval, gạch chân = khóa chính.
- **4 loại thuộc tính đặc biệt cần nhận diện**:
  - *Phức hợp (composite)*: gồm nhiều thành phần nhỏ hơn (VD: HoTen → Ho, TenLot, Ten). Vẽ oval cha nối các oval con.
  - *Đa trị (multivalued)*: một thực thể có thể có nhiều giá trị (VD: "nhiều số điện thoại", "danh sách..."). Vẽ **oval 2 nét**.
  - *Dẫn xuất (derived)*: tính toán được từ thuộc tính khác (VD: Thâm niên = tính từ Ngày vào làm). Vẽ **oval nét đứt**.
  - *Khóa (key)*: gạch chân.
- **Mối liên kết (Relationship)**: hình thoi, tên phải là **động từ** (không quan tâm ý nghĩa văn phong).
- **Lượng số (Cardinality) — 4 loại, ký hiệu chuẩn trong slide**:
  - Bắt buộc 1 (một): `||`
  - Bắt buộc nhiều: `|<`
  - Tùy chọn 1 (0 hoặc 1): `o|`
  - Tùy chọn nhiều (0 hoặc nhiều): `o<`

### Chương 3: Mô hình mở rộng (EER)
- Thực thể yếu (Weak Entity) — hình chữ nhật 2 nét, không có khóa riêng, phụ thuộc thực thể chủ.
- Chuyên biệt hóa/Tổng quát hóa (Specialization/Generalization): thực thể Cha (Superclass) và Con (Subclass), có disjoint (o = chỉ 1 loại) hoặc overlap.
- Thực thể kết hợp (Associative Entity): sinh ra khi 1 mối liên kết cần lưu thêm thuộc tính riêng và có khóa riêng.

### Chương 4: Chuyển ERD → Lược đồ quan hệ
(Chi tiết đầy đủ ở Phần 3 bên dưới — đây là phần trọng tâm nhất, chiếm 2 câu tự luận liền: Câu 2 và một phần Câu 1.)

### Chương 6: Phụ thuộc hàm & Chuẩn hóa
(Chi tiết ở Phần 4.)

---

## PHẦN 2: XÁC ĐỊNH LỖI SAI TRONG ERD [2đ — 10 lỗi × 0,2đ]

**Chiến thuật làm bài**: Nên làm câu này **sau cùng** (vì cần đọc kỹ mô tả đề bài + nhìn hình, tốn thời gian). Đọc từng câu mô tả, đối chiếu với hình vẽ.

### Checklist các lỗi thường gặp (học thuộc để soi nhanh):
1. **Thiếu khóa chính** — thuộc tính khóa quên gạch chân.
2. **Thuộc tính phức hợp bị vẽ sai** — không mở ngoặc liệt kê các thành phần con, hoặc liệt kê nhầm thành thuộc tính đơn.
3. **Thuộc tính đa trị vẽ sai** — trong đề có chữ "nhiều", "danh sách", "những"... mà hình vẽ oval 1 nét (thường).
4. **Thuộc tính dẫn xuất vẽ sai** — thuộc tính "được tính từ..." mà không vẽ oval nét đứt.
5. **Tên mối liên kết sai** — không phải động từ, hoặc đặt tên không khớp ý nghĩa quan hệ trong đề (lưu ý: chỉ cần đúng dạng động từ, **không cần đúng "ý nghĩa"**).
6. **Tên thuộc tính sai/không khớp đề** — phải đọc kỹ đề để đối chiếu từng tên.
7. **Lượng số (cardinality) sai** — đây là lỗi phổ biến nhất, đọc kỹ câu văn để xác định đúng 1/nhiều, bắt buộc/tùy chọn ở **mỗi đầu** của mối liên kết.

> **Mẹo**: Đề thi thử của bạn cũng có đúng dạng bài này (Câu 1 – 10 lỗi sai). Đây là dạng bài "đọc hiểu + đối chiếu", không có công thức tính, nên luyện càng nhiều đề mẫu càng quen mắt.

---

## PHẦN 3: THIẾT KẾ LƯỢC ĐỒ CSDL TỪ ERD [2đ]

### 8 QUY TẮC CHUYỂN ERD → LƯỢC ĐỒ QUAN HỆ (học thuộc lòng)

| # | Đối tượng ERD | Kết quả | Ghi chú |
|---|---|---|---|
| 1 | Hình chữ nhật (thực thể thường) | → 1 Bảng | Khóa chính nhìn đề bài. Thuộc tính phức hợp **không** đưa thuộc tính cha vào bảng, chỉ đưa các thuộc tính con. |
| 2 | Hình oval 2 nét (đa trị) | → 1 Bảng riêng | Khóa chính = khóa chính của thực thể chủ + chính thuộc tính đa trị đó. **Không** đưa thuộc tính đa trị vào bảng thực thể chủ. |
| 3 | Quan hệ 1–1 | Không ra bảng mới | Chỉ bổ sung khóa ngoại: lấy khóa chính bên "tùy chọn" (0..1) đặt vào bên "bắt buộc" (1..1). |
| 4 | Quan hệ 1–n | Không ra bảng mới | Chỉ bổ sung khóa ngoại: lấy khóa chính bên "1" đặt vào bên "nhiều" (n). |
| 5 | Quan hệ n–n (2 ngôi) | → 1 Bảng mới | Khóa chính = khóa chính của **cả 2** thực thể liên quan. |
| 6 | Quan hệ 3 ngôi (ternary) | → 1 Bảng mới | n-n-n: khóa chính là **cả 3**. Nếu có bên nào lượng số "1": đứng tại thực thể có số "1" đó, nhìn các thực thể còn lại → đó là khóa (quy tắc: "đứng tại cái 1, nhìn những cái còn lại là khóa"). |
| 7 | Thực thể kết hợp (Associative Entity) | → 1 Bảng | Nếu không có khóa riêng: khóa chính = khóa của 2 thực thể 2 bên. Nếu có khóa riêng: khóa riêng là khóa chính, còn 2 khóa 2 bên là khóa ngoại. |
| 8 | Chuyên biệt hóa (Cha–Con / Superclass-Subclass) | Mỗi thực thể (Cha, Con) → 1 bảng riêng | Bảng Con lấy khóa chính của Cha làm khóa chính của chính nó (không tự sinh khóa mới). |

### Cách làm bài từng bước:
1. Liệt kê tất cả thực thể (hình chữ nhật, hình oval 2 nét) → mỗi cái ra 1 bảng theo quy tắc 1, 2, 8.
2. Xét từng mối liên kết → áp quy tắc 3–7 tùy loại (1-1, 1-n, n-n, ternary, associative).
3. Với bảng phức hợp: nhớ **không** đưa thuộc tính cha (phức hợp) vào, chỉ đưa thuộc tính con.
4. Trình bày kết quả dạng: `TÊNBẢNG (khóa_chính, thuộc_tính1, thuộc_tính2, ...)` — khóa chính gạch chân, khóa ngoại có thể ghi chú hoặc gạch dưới nét đứt tùy quy ước lớp.

**Lưu ý chấm điểm**: 0,2đ/lược đồ đúng, kể cả nếu bạn tách nhiều hơn 10 bảng vẫn tối đa 2đ — nhưng **sai 1 bảng bị trừ 0,2đ**, nên cẩn thận, đừng "vẽ bừa" thêm bảng không chắc.

---

## PHẦN 4: CHUẨN HÓA DỮ LIỆU [3đ] — (Phần khó nhất, cần luyện kỹ)

### 4.1 Tìm khóa của lược đồ quan hệ [1,5đ]

**Ký hiệu**: `left(f)` = vế trái của phụ thuộc hàm f, `right(f)` = vế phải.

**Thuật toán (làm đúng theo thứ tự các bước):**

**Bước 0**: Đánh số thứ tự các phụ thuộc hàm f₁, f₂, f₃...

**Bước 1**: Tính `N = U − ∪right(f)` (U = tập tất cả thuộc tính, lấy U trừ đi hợp tất cả vế phải của các PTH)
- Ý nghĩa: N là các thuộc tính **không bao giờ xuất hiện ở vế phải** → chắc chắn phải nằm trong mọi khóa.

**Bước 2**: Tính bao đóng `N⁺` (dùng phép suy diễn Armstrong hoặc thuật toán tính bao đóng qua các PTH).
- Nếu `N⁺ = U` → **R chỉ có duy nhất 1 khóa là N**. Dừng lại.
- Nếu `N⁺ ⊂ U` (chưa đủ) → làm tiếp Bước 3.

**Bước 3** (chỉ khi N⁺ chưa đủ U):
- Tính `D = ∪right(f) − ∪left(f)` (thuộc tính chỉ xuất hiện ở vế phải, không bao giờ ở vế trái → **không bao giờ** thuộc khóa).
- Tính `L = U − N⁺.D` (các thuộc tính "nghi vấn", cần thử kết hợp với N).
- Với mỗi tập con `Lᵢ ⊆ L`, kiểm tra: nếu `{N ∪ Lᵢ}⁺ = U` thì `N ∪ Lᵢ` là một khóa ứng viên.
- Loại các khóa "cha" (chứa khóa nhỏ hơn đã tìm được) ra khỏi tập kết quả — chỉ giữ khóa **tối tiểu**.

**Mẹo tính nhanh bao đóng `X⁺`:** Bắt đầu từ X, lặp: nếu có PTH f mà `left(f) ⊆` tập hiện tại, thì thêm `right(f)` vào tập. Lặp đến khi không thêm được gì nữa.

**Ví dụ minh họa (từ slide):**
```
R(A,B,C,D,E,F), F = { A→D, C→AF, AB→EC }
N = U − right(f) = {ABCDEF} − {DAFEC} = {B}
{B}⁺ = {B} ≠ U → chưa đủ, làm tiếp
D_tt = {DAFEC} − {ACB} = {DFE}
L = U − N⁺.D = {ABCDEF} − {BDFE} = {AC}
Xét con của L: {A}, {C}, {AC}
{BA}⁺ = {BADECF} = U → {BA} là 1 khóa (loại tập cha của nó: {ABC})
{BC}⁺ = {BCAFDE} = U → {BC} là 1 khóa
→ R có 2 khóa: {BA} và {BC}
```

### 4.2 Phân rã lược đồ quan hệ (thành 3NF/BCNF) [1,5đ]

**Nguyên tắc chọn PTH để phân rã:**
- Không cần theo thứ tự, không dùng lại 1 PTH 2 lần, không bắt buộc dùng hết tất cả PTH.
- Nên **ưu tiên PTH nào mà bao đóng không liên quan/xung đột** với các PTH khác trước.
- PTH dùng để tách Ri phải có **đầy đủ thuộc tính** nằm trong Ri đang xét.

**Khi nào NGƯNG không tách nữa (điều kiện dừng)** — nhớ 3 trường hợp:
1. Ri chỉ còn 2 thuộc tính.
2. Ri có nhiều hơn 2 thuộc tính nhưng không còn PTH nào áp dụng được nữa.
3. Tập thuộc tính của Ri **trùng khớp hoàn toàn** với 1 PTH nào đó (left ∪ right của PTH = toàn bộ Ri).

**Cách xác định khóa chính cho mỗi Ri con** (bảng nào cũng phải có khóa!):
- Xét bao đóng của từng thuộc tính trong Ri: thuộc tính nào xác định được **tất cả** thuộc tính còn lại trong Ri → đó là khóa chính.
- Nếu không ai xác định hết → toàn bộ Ri là khóa (không có PTH nào áp dụng).
- Nếu Ri trùng với 1 PTH → vế trái PTH đó chính là khóa.

**Kết quả cuối** chỉ ghi những nhánh **lá** (cuối cùng, không tách được nữa) của cây phân rã — giống dạng cây nhị phân, tách 2 nhánh mỗi lần dùng 1 PTH.

**Ví dụ cây phân rã (từ slide):**
```
F = {D→B, A→C, AD→E, C→F}
R(ABCDEF)
 ├─ dùng D→B ──► R1(D,B)         [dừng: 2 thuộc tính]
 └─ R2(ACDEF)
     ├─ dùng A→C ──► R3(ACF)
     │    ├─ dùng C→F ──► R5(CF)  [dừng: 2 thuộc tính]
     │    └─► R6(AC)              [dừng: 2 thuộc tính]
     └─► R4(ADE)                  [dừng: AD→E trùng hết thuộc tính Ri]

Kết luận: ρ = { R1(D,B), R5(C,F), R6(A,C), R4(A,D,E) }
```

> **Luyện tập ngay**: Đề thi thử của bạn có bài Câu 3 với `R(A,B,C,D,E,F,G,H,I,J)` và 8 PTH — đây là bài tập rất hay để luyện cả 2 kỹ năng (tìm khóa + phân rã) cùng lúc, độ khó tương đương đề thật. Nên tự làm thử, mình có thể check lại đáp án giúp bạn.

---

## PHẦN 5: ĐẠI SỐ QUAN HỆ [1đ — 4 câu × 0,25đ]

### Phép toán quan hệ cơ bản
- **Phép chiếu (Projection)** `π<DSTT>(R)`: lấy ra các **cột** chỉ định. DSTT = danh sách thuộc tính.
- **Phép chọn (Selection)** `σ<ĐK>(R)`: lấy ra các **dòng** thỏa điều kiện logic.

### 5 phép toán tập hợp
| Phép toán | Ký hiệu | Cách tính (mẹo nhớ nhanh) |
|---|---|---|
| Hợp (Union) | `R ∪ S` | Gộp tất cả dòng, **dòng giống nhau chỉ giữ 1**. Tên cột lấy theo bảng bên trái. |
| Giao (Intersection) | `R ∩ S` | Chỉ giữ dòng **xuất hiện ở cả 2 bảng**. Tên cột theo bảng trái. |
| Hiệu (Except/Minus) | `R − S` | Giữ dòng **chỉ có ở R, không có ở S** ("bên phải dư hàng nào thì không lấy dòng đó ở R"). Tên cột theo bảng trái. |
| Chia (Division) | `R ÷ S` | Tên cột kết quả = cột **còn lại** của R không có trong S. Kết quả là các giá trị (của cột còn lại) mà **kết hợp được với TẤT CẢ** dòng của S. |
| Kết (Join) | `R ⋈ S` | Có 3 loại: Theta Join (điều kiện tùy ý), Equi Join (điều kiện `=`), **Natural Join** (tự động ghép trên cột trùng tên, **chỉ giữ cột trùng 1 lần** trong kết quả). |

### Lưu ý khi làm bài:
- **Điều kiện hợp lệ cho ∪, ∩, −**: 2 quan hệ phải **khả hợp** (cùng số cột, cùng kiểu dữ liệu tương ứng).
- Với phép chia `÷`: luôn viết ra `π_{cột còn lại}` trước, so từng nhóm giá trị với **toàn bộ** các dòng của quan hệ chia S — thiếu 1 dòng là loại ngay.
- Với `⋈` có điều kiện (như trong đề thi thử: `A>B`): đây là **Theta Join**, không tự động gộp cột trùng — vẫn giữ cả 2 cột tên A (của R và của S), khác với Natural Join.
- Bài tập đề thi thử của bạn có sẵn 4 dạng: giao, hiệu, kết theta, và kết hợp `r ÷ π(σ(s))` — rất sát với đề thật, nên luyện tay tính từng bước ra giấy nháp (kẻ bảng), đừng tính nhẩm.

---

## LỘ TRÌNH ÔN TẬP 12 NGÀY - THAM KHẢO

| Ngày | Việc cần làm |
|---|---|
| 1-2 | Học thuộc lý thuyết Chương 1,2,3 (ERD, thuộc tính, lượng số) → luyện trắc nghiệm |
| 3-4 | Học thuộc 8 quy tắc chuyển ERD → lược đồ (Chương 4), luyện vẽ tay 3-5 sơ đồ mẫu |
| 5-8 | Luyện tìm khóa + phân rã (Chương 6) — đây là phần nặng điểm nhất (3đ), cần làm ít nhất 5-6 bài tập khác nhau |
| 9-10 | Luyện đại số quan hệ (Chương 7) — làm hết ví dụ trong slide + đề thi thử |
| 11 | Làm trọn vẹn đề thi thử theo đúng 90 phút, tự chấm |
| 12 | Ôn lại phần yếu nhất sau khi làm đề thử |
| Trước thi | Xem lại nhanh toàn bộ công thức/quy tắc, nghỉ ngơi |

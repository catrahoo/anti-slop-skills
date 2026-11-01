# anti-slop-skills

Kumpulan 7 skill untuk AI agent (Claude Code) supaya hasil desain UI dan tulisan tidak terasa "AI banget".

Develop Program By Nurman Catra

| Plugin | Fungsi | Sumber |
|---|---|---|
| taste-skill | Selera desain frontend | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| antislop | Anti-slop kode, UI, copywriting, layout mobile | [miqdadbadjuber/anti-slop](https://github.com/miqdadbadjuber/anti-slop) |
| impeccable | Kualitas desain frontend | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| humanizer | Tulisan terdengar manusiawi | [blader/humanizer](https://github.com/blader/humanizer) |
| stop-slop | Hapus pola tulisan AI | [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) |
| no-ai-slop | Rapikan draf, gaya penulis tetap | [petergyang/no-ai-slop](https://github.com/petergyang/no-ai-slop) |
| avoid-ai-writing | Deteksi & tulis ulang tulisan AI | [conorbronsdon/avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing) |

## Cara pakai di Claude Code

```
/plugin marketplace add catrahoo/anti-slop-skills
/plugin install taste-skill@anti-slop-skills
/plugin install antislop@anti-slop-skills
/plugin install impeccable@anti-slop-skills
/plugin install humanizer@anti-slop-skills
/plugin install stop-slop@anti-slop-skills
/plugin install no-ai-slop@anti-slop-skills
/plugin install avoid-ai-writing@anti-slop-skills
```

Atau ketik `/plugin`, pilih marketplace `anti-slop-skills`, lalu centang yang mau dipasang.

## Update

- taste-skill, antislop, humanizer diambil langsung dari GitHub pembuatnya, jadi selalu versi terbaru.
- 4 lainnya disalin ke folder `plugins/`. GitHub Action **Sync skills** menarik versi terbaru tiap Senin pagi; bisa juga dijalankan manual dari tab **Actions → Sync skills → Run workflow**.

## Lisensi

Tiap plugin mengikuti lisensi aslinya (MIT, impeccable: Apache-2.0). File `LICENSE` asli ada di dalam folder masing-masing plugin.

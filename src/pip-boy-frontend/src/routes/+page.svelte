<script>
  import "../index.scss";
  import { backend } from "$lib/canisters";

  let greeting = "";

  // function onSubmit(event) {
  //   const name = event.target.name.value;
  //   backend.greet(name).then((response) => {
  //     greeting = response;
  //   });
  //   return false;
  // }
</script>

<div class="retro-container scanline-effect old-crt-monitor">
  <header>
      <h1>jajaja</h1>
      <!-- svelte-ignore a11y-no-redundant-roles -->
      <nav role="navigation">
          <ul>
              <li><a href="#screen-1">SCREEN 1</a></li>
          </ul>
          <ul>
              <li><a href="#screen-2">SCREEN 2</a></li>
          </ul>
      </nav>
  </header>
  
  <main>
      <section id="screen-1">
          <article>
              <header>
                  <h2>SCREEN 1</h2>
              </header>
              <div class="content">
                  Lorem ipsum...
              </div>
              <figure>
                  <img src="https://tiermaker.com/images/template_images/2022/15600753/fallout-new-vegas-perk-tier-list-all-dlc-and-correct-perks-15600753/slayerfnv.png" alt="alt text for illustration">
              </figure>
          </article>
      </section>
      <section id="screen-2">
          <article>
              <header>
                  <h2>SCREEN 2</h2>
              </header>
              <div class="content">
                  Lorem ipsum...
              </div>
              <figure>
                  <img src="https://tiermaker.com/images/template_images/2022/15600753/fallout-new-vegas-perk-tier-list-all-dlc-and-correct-perks-15600753/slayerfnv.png" alt="alt text for illustration">
              </figure>
          </article>
      </section>
  </main>
  <footer>
      <p></p>
  </footer>
</div>

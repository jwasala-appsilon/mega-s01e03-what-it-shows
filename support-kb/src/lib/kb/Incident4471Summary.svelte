<script lang="ts">
  import reports from '#lib/data/reports-4471.json';
  import { groupByCause, uniqueById, type Report } from '#lib/kb/causes';
  import { tenantOf } from '#lib/kb/locales';

  const groups = groupByCause(uniqueById(reports as Report[]).filter((r) => r.mergedInto === 4471), tenantOf);
</script>

<table>
  <thead><tr><th>Cause</th><th>Reports</th><th>Tenants</th><th>First seen</th><th>Last seen</th></tr></thead>
  <tbody>
    {#each groups as group (group.cause)}
      <tr><td>{group.cause}</td><td>{group.reports.length}</td><td>{group.tenants}</td><td>{group.firstSeen}</td><td>{group.lastSeen}</td></tr>
    {/each}
  </tbody>
</table>

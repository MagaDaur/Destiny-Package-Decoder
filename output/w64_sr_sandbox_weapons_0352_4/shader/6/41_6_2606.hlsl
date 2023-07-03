// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).wxyz;
    r2.xyzw = t0.Load(r2.w).wxyz;
    r0.y = saturate(r5.y);
    r6.xyz = r0.yyy * float3(-0.93333298,-2.93333292,5) + float3(2.86666703,1,4);
    r0.y = r0.y * r0.y;
    r0.y = saturate(r6.x * r0.y + r6.y);
    r0.y = r0.y * 0.0179999992 + 0.00200000009;
    r0.z = saturate(r1.w);
    r0.z = 2 + -r0.z;
    r0.y = r0.y * r0.z;
    r0.z = saturate(r3.w);
    r7.xyzw = r0.zzzz * float4(1.08080804,-0.919192016,118.897331,-0.0702000037) + float4(-1.16161597,1,-27.2339897,0.236425996);
    r0.w = r0.z * r0.z;
    r6.x = r7.x * r0.w + r7.y;
    r6.x = max(0, r6.x);
    r6.x = r6.x * 0.999000013 + 0.00100000005;
    r8.z = r6.x * r0.y;
    r9.xyzw = r0.zzzz * float4(-3.88636398,-0.301725,0.670237005,-1.24531806) + float4(1,0.135499001,-0.424919009,1);
    r6.xy = r7.zw * r0.ww + r9.xy;
    r7.xyz = cmp(r0.zzz >= float3(0,0.203333005,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r0.yz = r7.xy + r7.yz;
    r0.yz = float2(9.99999997e-007,9.99999997e-007) + r0.yz;
    r0.yz = float2(0.5,0.5) * r0.yz;
    r0.yz = frac(r0.yz);
    r0.yz = r0.yz * r6.xy;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = 150 * r0.y;
    r0.z = saturate(3 * r1.w);
    r6.xy = r0.zz * float2(-0.351350993,-2.35135102) + float2(1.702703,1);
    r0.z = r0.z * r0.z;
    r0.z = saturate(r6.x * r0.z + r6.y);
    r0.z = r0.z * r6.z + 1;
    r8.w = r0.y * r0.z;
    r0.y = saturate(r9.z * r0.w + r9.w);
    r6.xyz = r0.yyy * float3(0.039583981,0.362623006,0.0256650001) + float3(0.960416019,0.019258,0.0130669996);
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r8.xy = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r4.yzw = r5.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r5.yzw = r2.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}
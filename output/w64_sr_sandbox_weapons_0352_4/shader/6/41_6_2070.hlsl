// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).wxyz;
    r2.xyzw = t0.Load(r2.w).wxyz;
    r0.y = saturate(r5.x);
    r0.z = saturate(r2.y);
    r6.xy = r0.zz * float2(4.67567587,0.165644005) + float2(0,0.83435601);
    r7.xyz = cmp(r0.zzz >= float3(0,0.185000002,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r0.zw = r7.xy * r6.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r7.z * 2 + r0.z;
    r0.z = r7.w * 1 + r0.z;
    r0.z = min(1, r0.z);
    r6.x = r0.z * -0.75 + 1;
    r0.z = 4 * r0.y;
    r7.xyz = r0.yyy * float3(4151.31982,-0.192273006,11.7647066) + float3(-417.047424,0.582997024,-0.882353008);
    r8.xy = r0.yy * float2(-3.14814806,-0.589175999) + float2(1,0.198451996);
    r0.w = r0.y * r0.y;
    r7.xy = r7.xy * r0.ww + r8.xy;
    r8.xyz = cmp(r0.yyy >= float3(0,0.0700000003,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r8.xy = r8.xy + r8.yz;
    r8.xy = float2(9.99999997e-007,9.99999997e-007) + r8.xy;
    r8.xy = float2(0.5,0.5) * r8.xy;
    r8.xy = frac(r8.xy);
    r7.xy = r8.xy * r7.xy;
    r7.xy = r7.xy + r7.xy;
    r0.w = saturate(r7.x + r7.y);
    r0.w = r0.w * 0.0149999997 + 0.00499999989;
    r7.x = saturate(r4.z);
    r8.xyzw = r7.xxxx * float4(-1.75204098,1555.1156,0,4269.9458) + float4(1.40718198,-4469.84082,1,-1355.22021);
    r7.y = r7.x * r7.x;
    r8.xy = r8.xy * r7.yy + r8.zw;
    r9.xyz = cmp(r7.xxx >= float3(0,0.910000026,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.zw = r9.xy + r9.yz;
    r8.zw = float2(9.99999997e-007,9.99999997e-007) + r8.zw;
    r8.zw = float2(0.5,0.5) * r8.zw;
    r8.zw = frac(r8.zw);
    r8.xy = r8.zw * r8.xy;
    r8.xy = r8.xy + r8.xy;
    r7.w = saturate(r8.x + r8.y);
    r7.w = r7.w * 0.949999988 + 0.0500000007;
    r0.w = r7.w * r0.w;
    r7.w = saturate(r4.y * 0.133332998 + -0.066666998);
    r7.w = r7.w * 0.800000012 + 0.200000003;
    r6.y = r7.w * r0.w;
    r8.xyz = cmp(r0.yyy >= float3(0.075000003,0.159999996,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r0.yw = r8.xy + r8.yw;
    r0.yw = float2(9.99999997e-007,9.99999997e-007) + r0.yw;
    r0.yw = float2(0.5,0.5) * r0.yw;
    r8.yz = frac(r0.yw);
    r8.x = r8.y * r7.z;
    r0.yw = float2(2,2) * r8.xz;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r8.w * 1 + r0.y);
    r8.xyz = r7.xxx * float3(4066.26221,4.20565414,-0.247984007) + float3(-462.303009,-0.931827009,0.513971984);
    r9.xyz = r7.xxx * float3(0,-0.658469021,-0.323466003) + float3(1,0.167851999,0.0574779995);
    r7.yzw = r8.xyz * r7.yyy + r9.xyz;
    r8.xyzw = cmp(r7.xxxx >= float4(0,0.075000003,0.300000012,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.yzw;
    r7.xy = r7.xy + r7.xy;
    r0.w = r7.x + r7.y;
    r0.w = saturate(r7.z * 2 + r0.w);
    r7.x = 500 + -r0.y;
    r0.y = r0.w * r7.x + r0.y;
    r0.w = saturate(5 * r1.w);
    r0.w = 1 + -r0.w;
    r0.w = r0.w * 4 + 1;
    r6.z = r0.y * r0.w;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
    r3.xy = r5.yz;
    r3.zw = r0.zz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r3.xyzw
    r6.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r6.xyzw
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
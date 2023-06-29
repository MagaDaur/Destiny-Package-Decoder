// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.yz = t0.Load(r2.y).xy;
    r4.yz = t0.Load(r2.z).zw;
    r2.xyz = t0.Load(r2.w).yzx;
    r5.z = saturate(r4.z);
    r0.w = cb13[0].y + r4.y;
    r6.xy = float2(0.0700000003,0.0500000007) * r0.ww;
    r6.xz = frac(r6.xy);
    r5.w = 1 + -r6.x;
    r6.xw = saturate(r2.xz);
    r0.w = saturate(r1.w);
    r7.xyzw = r0.wwww * float4(1.49296403,-4.52658796,-2.10488105,1.56652999) + float4(1.32714903,7.22701979,1.77679396,-5.966465);
    r8.xyzw = r0.wwww * float4(0,-1.86363196,1.85710895,7.24231005) + float4(0,0.191317007,-0.610275984,-1.84229398);
    r9.xyz = r0.www * float3(0.0149670001,0.153933004,-0.294095993) + float3(0.985032976,-0.970156014,0.192871004);
    r9.w = r0.w * r0.w;
    r7.xyzw = r7.xyzw * r9.wwww + r8.xyzw;
    r8.xyzw = cmp(r0.wwww >= float4(0,0.283333004,0.527778029,0.755555987));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r10.xy = cmp(r0.ww >= float2(0.988888979,1));
    r10.yz = r10.xy ? float2(1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r8.xy = r10.yz + r10.zz;
    r8.xy = float2(9.99999997e-007,9.99999997e-007) + r8.xy;
    r8.xy = float2(0.5,0.5) * r8.xy;
    r8.xy = frac(r8.xy);
    r8.x = r8.x * r9.x;
    r8.z = 2;
    r7.xy = r8.zz * r7.xy;
    r8.x = 2 * r8.x;
    r7.x = r7.x + r7.y;
    r7.x = r8.z * r7.z + r7.x;
    r7.x = r7.w * r8.w + r7.x;
    r7.y = r8.y * 4 + r8.x;
    r7.y = r10.z * 1 + r7.y;
    r7.x = saturate(r10.x ? r7.y : r7.x);
    r7.x = r7.x * 0.200000018 + 0.100000001;
    r8.xyzw = r0.wwww * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r10.xyzw = r0.wwww * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r11.xy = r0.ww * float2(1.50990403,0.496670008) + float2(0.308346987,0.604618013);
    r8.xyzw = r8.xyzw * r9.wwww + r10.xyzw;
    r9.xy = r9.yz * r9.ww + r11.xy;
    r10.xyzw = cmp(r0.wwww >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = cmp(r0.www >= float3(0.427778006,0.866666973,1));
    r12.xyw = r11.xyz ? float3(1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r8.xyz = r10.xyz * r8.xyz;
    r10.xyz = r12.xyw + r12.yww;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xy = r10.xy * r9.xy;
    r9.z = 2;
    r8.xy = r9.zz * r8.xy;
    r9.xy = float2(2,2) * r9.xy;
    r8.x = r8.x + r8.y;
    r8.x = r9.z * r8.z + r8.x;
    r8.x = r8.w * r10.w + r8.x;
    r8.y = r9.x + r9.y;
    r8.y = r10.z * 2 + r8.y;
    r8.y = r12.w * 1 + r8.y;
    r8.x = saturate(r11.x ? r8.y : r8.x);
    r8.x = 0.349999994 * r8.x;
    r8.yz = r6.wx * float2(0.75,0.75) + float2(0.5,0.25);
    r7.w = r8.x * r8.y;
    r10.xyzw = r0.wwww * float4(0,0,-6.60166216,-10.4477844) + float4(0,0,6.19386292,12.7921143);
    r11.xyzw = r0.wwww * float4(9.090909,0,-1.24261498,-5.03149414) + float4(0,1,0.898065984,1.62716699);
    r8.xyw = r0.www * float3(58.6504517,-11.7892456,9.85351563) + float3(-140.817993,45.0400391,-20.3321533);
    r9.xyz = r0.www * float3(108.689636,-54.6810303,11.1040039) + float3(-26.4110718,21.4302368,-0.625182986);
    r10.xyzw = r10.xyzw * r9.wwww + r11.xyzw;
    r8.xyw = r8.xyw * r9.www + r9.xyz;
    r9.xyzw = cmp(r0.wwww >= float4(0,0.109999999,0.5,0.613888979));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r11.xyzw = cmp(r0.wwww >= float4(0.725000024,0.869444013,0.969443977,1));
    r12.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.xyz = r9.xyz * r10.xyz;
    r10.xyz = r12.xyz + r12.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r8.xyw = r10.xyz * r8.xyw;
    r0.w = 2;
    r9.xy = r0.ww * r9.xy;
    r8.xy = r8.xy + r8.xy;
    r9.x = r9.x + r9.y;
    r0.w = r0.w * r9.z + r9.x;
    r0.w = r10.w * r9.w + r0.w;
    r8.x = r8.x + r8.y;
    r8.x = r8.w * 2 + r8.x;
    r0.w = saturate(r11.x ? r8.x : r0.w);
    r0.w = 0.25 * r0.w;
    r0.w = r0.w * r8.z;
    r8.x = saturate(cb0[4].x);
    r8.x = 1 + r8.x;
    r4.x = r8.x * r0.w;
    r0.x = mad(10, (int)vThreadID.x, (int)r0.x);
    r5.xy = float2(2,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r8.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.xy = float2(3,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.xxxx, r6.xywz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.yyyy, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.zzzz, r6.xywz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.wwww, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.xy = r0.yz;
    r6.z = r5.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.yz = r6.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.w = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.y = (int)r0.x + 9;
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}